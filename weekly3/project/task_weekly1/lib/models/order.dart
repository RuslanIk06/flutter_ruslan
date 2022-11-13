import 'package:nanoid/non_secure.dart';

class ModelOrder {
  late String id;
  final String firstName;
  final String lastName;
  final String email;
  final String address;

  ModelOrder(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.address}) {
    id = nanoid(3);
  }
}
