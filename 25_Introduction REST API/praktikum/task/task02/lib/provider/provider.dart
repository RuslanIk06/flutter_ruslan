import 'package:flutter/cupertino.dart';
import 'package:task02/model/api/model.dart';
import 'package:task02/model/api/model_api.dart';

class DataProvider with ChangeNotifier {
  List<ModelData> _modelData = [];
  List<ModelData> get modelData => [..._modelData];

  getAllData() async {
    final dat = await DataAPI.getData();
    _modelData = dat;
    notifyListeners();
  }
}
