import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/features/classes/domain/entities/class_response_entity.dart';
import 'package:http/http.dart' as http;

class ClassApiService {
  final SharedPreferences _sharedPreferences;

  const ClassApiService(this._sharedPreferences);

  Future<ClassResponseEntity> getAllClasses() async {
    final token = _sharedPreferences.getString("token");

    final response = await http.get(
      Uri.parse('${AppConfig.shared.baseUrl}/class/'),
      headers: {"Authorization": "Bearer $token"},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ClassResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
