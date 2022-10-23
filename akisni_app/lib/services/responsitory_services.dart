import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
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

  static List<LocationListModel> getLocation() {
    List<LocationListModel> tempList = <LocationListModel>[];
    tempList.add(LocationListModel(
      id: const Uuid().v4(),
      title: "DK41-055",
      power: "630 kVA ( Fuji )",
      type: "LV",
      name: "អ៊ឺង ប៊ុនប៉េង​ ទី១៤",
      company: "DK",
      latitude: 11.493302,
      longitude: 104.872099,
    ));
    tempList.add(LocationListModel(
      id: const Uuid().v4(),
      title: "DK41-046",
      power: "630 kVA ( Precise )",
      type: "LV",
      name: "អ៊ឺង ប៊ុនប៉េង​ ទី៩",
      company: "DK",
      latitude: 11.485075,
      longitude: 104.872250,
    ));
    tempList.add(LocationListModel(
      id: const Uuid().v4(),
      title: "DK41-048",
      power: "630 kVA ( Thaipat )",
      location: "រោងចក្រ",
      type: "LV",
      name: "អ៊ឺង ប៊ុនប៉េង​ ទី១០",
      company: "DK",
      latitude: 11.484592,
      longitude: 104.874533,
    ));

    return tempList;
  }

  static Future<Map<String, dynamic>> insertLocation(
      LocationListModel locate) async {
    await mongoDb.open();
    var collection = mongoDb.collection(USER_COLLECTION);
    var dataLocation = await collection.insert(locate.toJson());
    await mongoDb.close();
    return dataLocation;
  }
}
