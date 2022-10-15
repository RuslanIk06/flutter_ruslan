import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:task02/model/api/model.dart';

class DataAPI {
  static Future<List<ModelData>> getData() async {
    var baseUrl = "https://reqres.in/api/users";
    final response = await Dio().get(baseUrl);

    List<ModelData> dataModel = (response.data as List)
        .map(
          (e) => ModelData(
            email: e['email'],
            name: e['first_name'],
          ),
        )
        .toList();
    return dataModel;
  }
}
