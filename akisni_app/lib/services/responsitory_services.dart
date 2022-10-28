import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/models/user_active_models/user_active_model.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_provider.dart';

class ResponsitoryServices {
  static Future<List<UserModel>> getUser() async {
    AppProvider provider = AppProvider();
    List<UserModel> userList = [];
    var resp = await provider.getUser();
    if (resp.statusCode == 200) {
      var dataUser = resp.body;
      userList = dataUser.map((u) => UserModel.fromJson(u)).toList();
    }
    return userList;
  }

  static Future<UserModel> findUserById(String id) async {
    AppProvider provider = AppProvider();
    UserModel user = UserModel();
    var resp = await provider.getUserFindOne(id);
    if (resp.statusCode == 200) {
      var dataUser = resp.body;
      user = UserModel.fromJson(dataUser);
    }
    return user;
  }

  static Future<bool> checkLogin({
    String? username,
    String? password,
    String? phoneNumber,
  }) async {
    AppProvider provider = AppProvider();
    var body = {"username": username, "password": password};
    var resp = await provider.loginUser(body);

    if (resp.statusCode == 200) {
      return true;
    }

    return false;
  }

  static Future<List<UserActiveModel>> getTrackUser() async {
    AppProvider provider = AppProvider();
    List<UserActiveModel> userActiveList = [];
    var resp = await provider.getActiveUser();
    if (resp.statusCode == 200) {
      var dataUser = resp.body;
      userActiveList = dataUser.map((u) => UserModel.fromJson(u)).toList();
    }
    return userActiveList;
  }

  static Future<List<LocationListModel>> getLocation() async {
    AppProvider provider = AppProvider();
    List<LocationListModel> locationList = [];
    var resp = await provider.getActiveUser();
    if (resp.statusCode == 200) {
      var dataLocation = resp.body;
      locationList = dataLocation.map((u) => UserModel.fromJson(u)).toList();
    }
    return locationList;
  }

  static Future<dynamic> insertLocation(LocationListModel locate) async {
    AppProvider provider = AppProvider();
    List<LocationListModel> locationList = [];
    var resp = await provider.getLocationList();
    if (resp.statusCode == 200) {
      var dataLocation = resp.body;
      locationList = dataLocation.map((u) => UserModel.fromJson(u)).toList();
    }

    return locationList;
  }
}
