import 'package:isar/isar.dart';

part 'user_model.g.dart';

@collection
class User {

  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  String name;
  String email;
  DateTime? createdAt;

  User({
    required this.name,
    required this.email,
    this.createdAt,
  });

}