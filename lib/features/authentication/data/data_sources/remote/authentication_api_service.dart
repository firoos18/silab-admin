import 'dart:convert';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/features/authentication/data/models/login_model.dart';
import 'package:silab_admin/features/authentication/domain/entities/login_response_entity.dart';
import 'package:http/http.dart' as http;

class AuthenticationApiService {
  Future<LoginResponseEntity> userLogin(LoginModel loginModel) async {
    final response = await http.post(
      Uri.parse('${AppConfig.shared.baseUrl}/auth/login'),
      body: loginModel.toJson(),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return LoginResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
