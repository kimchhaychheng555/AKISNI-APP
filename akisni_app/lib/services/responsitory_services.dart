import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ResponsitoryServices {
  static Db mongoDb = Db("");

  static Future<List<UserModel>> getUser() async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var dataUser = await collection.find().toList();
    List<UserModel> userList =
        dataUser.map((u) => UserModel.fromJson(u)).toList();

    await mongoDb.close();
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

    await mongoDb.close();
    return user;
  }

  static Future<bool> checkLogin({
    String? username,
    String? password,
    String? phoneNumber,
  }) async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var user =
        await collection.findOne({'username': username, 'password': password});

    await mongoDb.close();

    if (user != null) {
      AppService.loginUser = UserModel.fromJson(user);
    }

    return user == null ? false : true;
  }

  static Future<List<UserModel>> getTrackUser() async {
    var trackDb = await Db.create(CONNECTION_STR_MONOGO_DB);
    await trackDb.open();
    var collection = trackDb.collection(TRACK_USER_COLLECTION);
    var dataUser = await collection.find().toList();
    List<UserModel> userList =
        dataUser.map((e) => UserModel.fromJson(e)).toList();
    await trackDb.close();
    return userList;
  }
}
