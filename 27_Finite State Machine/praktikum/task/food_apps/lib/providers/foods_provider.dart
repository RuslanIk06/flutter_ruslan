import 'package:flutter/cupertino.dart';
import 'package:food_apps/models/api/foods_api.dart';

import '../models/foods.dart';

class FoodsProvider with ChangeNotifier {
  List<Foods> _foods = [];
  List<Foods> get foods => [..._foods];

  getAllFoods() async {
    final f = await FoodsAPI.getDataFoods();
    _foods = f;
    notifyListeners();
  }
}
