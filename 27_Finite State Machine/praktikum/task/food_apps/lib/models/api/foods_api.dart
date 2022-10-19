import 'package:dio/dio.dart';
import 'package:food_apps/models/foods.dart';

class FoodsAPI {
  Future<List<Foods>> getDataFoods() async {
    final response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods");

    List<Foods> foods = (response.data as List)
        .map(
          (e) => Foods(
            id: e['id'],
            name: e['name'],
          ),
        )
        .toList();
    return foods;
  }
}
