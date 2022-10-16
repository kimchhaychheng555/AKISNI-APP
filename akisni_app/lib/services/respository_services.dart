import 'dart:convert';

import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:mongo_dart/mongo_dart.dart';

class RespositoryServices {
  static Db mongoDb = Db("");

  static Future<List<UserModel>> getUser() async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var dataUser = await collection.find().toList();
    List<UserModel> userList =
        dataUser.map((u) => UserModel.fromJson(u)).toList();
    return userList;
  }
}
