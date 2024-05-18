import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/features/subjects/domain/entities/subject_by_id_response_entity.dart';
import 'package:silab_admin/features/subjects/domain/entities/subjects_response_entity.dart';
import 'package:http/http.dart' as http;

class SubjectApiService {
  final SharedPreferences _sharedPreferences;

  const SubjectApiService(this._sharedPreferences);

  Future<SubjectsResponseEntity> getAllSubjects() async {
    final token = _sharedPreferences.getString("token");

    final response = await http
        .get(Uri.parse("${AppConfig.shared.baseUrl}/subject/"), headers: {
      "Authorization": "Bearer $token",
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SubjectsResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }

  Future<SubjectByIdResponseEntity> getSubjectById(String? id) async {
    final token = _sharedPreferences.getString("token");

    final response = await http.get(
      Uri.parse("${AppConfig.shared.baseUrl}/subject/$id"),
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return SubjectByIdResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
