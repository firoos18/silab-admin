import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/features/add/data/models/add_subject_model/add_subject_model.dart';
import 'package:silab_admin/features/add/domain/entities/add_subject_response_entity/add_subject_response_entity.dart';
import 'package:http/http.dart' as http;

class AddSubjectApiService {
  final SharedPreferences _sharedPreferences;

  const AddSubjectApiService(this._sharedPreferences);

  Future<AddSubjectResponseEntity> addSubject(
      AddSubjectModel subjectModel) async {
    final token = _sharedPreferences.getString("token");

    final response = await http.post(
      Uri.parse("${AppConfig.shared.baseUrl}/subject/"),
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      },
      body: jsonEncode(subjectModel.toJson()),
    );

    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return AddSubjectResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
