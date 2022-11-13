import 'package:flutter/foundation.dart';
import 'package:task_weekly1/models/order.dart';

class OrderProvider with ChangeNotifier {
  final List<ModelOrder> _order = [];
  List<ModelOrder> get order => [..._order];

  void tambahOrder(ModelOrder newOrder) {
    _order.add(newOrder);
    notifyListeners();
  }
}
