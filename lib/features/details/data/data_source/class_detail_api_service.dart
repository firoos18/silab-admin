import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/features/details/domain/entities/class_detail_response_entity.dart';

class ClassDetailApiService {
  final SharedPreferences _sharedPreferences;

  const ClassDetailApiService(this._sharedPreferences);

  Future<ClassDetailResponseEntity> getClassDetails(String? id) async {
    final token = _sharedPreferences.getString("token");

    final response = await http.get(
      Uri.parse('${AppConfig.shared.baseUrl}/class/$id'),
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ClassDetailResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
