import 'package:local_data_storage/helper/constants.dart';

class UserModel {
  int id;
  String name, email, phone;
  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
  });

  UserModel.fromJson(Map<String, dynamic> map) {
    id = map[columnId];
    name = map[columnName];
    phone = map[columnPhone];
    email = map[columnEmail];
  }

  toJson() {
    return {
      columnName: name,
      columnPhone: phone,
      columnEmail: email,
    };
  }
}
