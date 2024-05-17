import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab_admin/app_config.dart';
import 'package:silab_admin/core/exceptions/exceptions.dart';
import 'package:silab_admin/features/add/data/models/add_class_model/add_class_model.dart';
import 'package:silab_admin/features/add/domain/entities/add_class_response_entity/add_class_response_entity.dart';
import 'package:http/http.dart' as http;

class AddClassApiService {
  final SharedPreferences _sharedPreferences;

  const AddClassApiService(this._sharedPreferences);

  Future<AddClassResponseEntity> addClass(AddClassModel addClassModel) async {
    final token = _sharedPreferences.getString("token");

    final response = await http.post(
      Uri.parse('${AppConfig.shared.baseUrl}/class/'),
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      },
      body: json.encode(addClassModel.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return AddClassResponseEntity.fromJson(data);
    } else {
      final data = jsonDecode(response.body);
      throw RequestErrorException(data['message']);
    }
  }
}
