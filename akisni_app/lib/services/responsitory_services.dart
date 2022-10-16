import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ResponsitoryServices {
  static Db mongoDb = Db("");

  static Future<List<UserModel>> getUser() async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var dataUser = await collection.find().toList();
    List<UserModel> userList =
        dataUser.map((u) => UserModel.fromJson(u)).toList();

    mongoDb.close();
    return userList;
  }

  static Future<UserModel> findUserById(String id) async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var dataUser = await collection.findOne(where.eq("id", id));
    UserModel user;
    if (dataUser == null) {
      user = UserModel.fromJson(dataUser!);
    } else {
      user = UserModel(id: Uuid.NAMESPACE_NIL);
    }

    mongoDb.close();
    return user;
  }

  static Future<bool> checkLogin({
    String? username,
    String? password,
    String? phoneNumber,
  }) async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var user = await collection
        .findOne({'username': 'chhaylow', 'password': '1234156789'});

    mongoDb.close();

    return user == null ? false : true;
  }
}
