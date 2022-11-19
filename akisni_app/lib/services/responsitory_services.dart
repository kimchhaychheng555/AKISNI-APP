// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:path/path.dart' as p;
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:akisni_app/models/user_active_models/user_active_model.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_provider.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class ResponsitoryServices {
  // USER ================================
  static Future<List<UserModel>> getUser() async {
    AppProvider provider = AppProvider();
    List<UserModel> userList = [];
    var resp = await provider.getUser();
    if (resp.statusCode == 200) {
      List<dynamic> data = resp.body ?? [];
      userList = data.map((u) => UserModel.fromJson(u)).toList();
    }
    return userList;
  }

  static Future<UserModel> findUserById(String id) async {
    AppProvider provider = AppProvider();
    UserModel user = UserModel();
    var resp = await provider.getUserFindOne(id);
    if (resp.statusCode == 200) {
      var dataUser = resp.body ?? [];
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
      AppService.loginUser = UserModel.fromJson(resp.body[0]);
      var position = await Geolocator.getCurrentPosition();
      AppService.loginUser.lastLatitude = position.latitude;
      AppService.loginUser.lastLongitude = position.longitude;
      return true;
    }

    return false;
  }

  //  END USER ===============================

  // LOCATION ===================================

  static Future<List<LocationListModel>> getLocation() async {
    AppProvider provider = AppProvider();
    List<LocationListModel> locationList = [];
    var resp = await provider.getLocationList();
    if (resp.statusCode == 200) {
      List<dynamic> data = resp.body ?? [];
      locationList = data.map((u) => LocationListModel.fromJson(u)).toList();
    }
    return locationList;
  }

  static Future<Response> insertLocation(LocationListModel locate) async {
    AppProvider provider = AppProvider();
    var resp = await provider.createLocationList(locate.toJson());
    return resp;
  }

  static Future<Response> updateLocation(LocationListModel locate) async {
    AppProvider provider = AppProvider();
    print(jsonEncode(locate));
    var resp = await provider.updateLocationList(locate.toJson());
    return resp;
  }

  static Future<Response> deleteLocation(String? value) async {
    AppProvider provider = AppProvider();
    if (value != null) {
      var resp = provider.deleteLocationList(value);
      return resp;
    }
    return const Response(statusCode: 404);
  }
  // END LOCATION ===================================

  static Future<List<UserActiveModel>> getTrackUser() async {
    AppProvider provider = AppProvider();
    List<UserActiveModel> userActiveList = [];
    var resp = await provider.getActiveUser();
    if (resp.statusCode == 200) {
      List<dynamic> data = resp.body ?? [];
      userActiveList = data.map((u) => UserActiveModel.fromJson(u)).toList();
    }
    return userActiveList;
  }

  static Future<Response> upload(
      {String? path, String? name, Uint8List? rawFile}) async {
    AppProvider provider = AppProvider();

    if (kIsWeb) {
      var resp = await provider.upload(name: name, uint8list: rawFile);
      return resp;
    } else {
      final extension = p.extension(path!);
      var rename = "${name ?? const Uuid().v4().toString()}$extension";
      var resp = await provider.upload(path: path, name: rename);
      return resp;
    }
  }

  static void insertActiveUser(UserModel user) {
    AppProvider provider = AppProvider();
    var tempUserActive = UserActiveModel(
      user_id: user.id,
      fullName: user.fullName,
      phoneNumber: user.phoneNumber,
      username: user.username,
      password: user.password,
      role: user.role,
      profile: user.profile,
      active: "active",
      lastLatitude: user.lastLatitude,
      lastLongitude: user.lastLongitude,
    );

    provider.createActiveUser(tempUserActive.toJson());
  }

  static void updateActiveUser(UserModel user) async {
    AppProvider provider = AppProvider();
    var location = await Geolocator.getCurrentPosition();
    var tempUserActive = UserActiveModel(
      user_id: user.id,
      fullName: user.fullName,
      phoneNumber: user.phoneNumber,
      username: user.username,
      password: user.password,
      role: user.role,
      profile: user.profile,
      active: "active",
      lastLatitude: location.latitude,
      lastLongitude: location.longitude,
    );
    provider.updateActiveUser(tempUserActive.toJson());
  }

  static void deleteActiveUser(UserModel user) {
    AppProvider provider = AppProvider();
    provider.deleteActiveUser(user.id ?? "");
  }

  // ================================

  static Future<Response> insertUser(UserModel user) async {
    AppProvider provider = AppProvider();
    var resp = await provider.createUser(user.toJson());
    return resp;
  }

  static Future<Response> updateUser(UserModel user) async {
    AppProvider provider = AppProvider();
    var resp = await provider.updateUser(user.toJson());
    return resp;
  }

  static Future<Response> deleteUser(String id) async {
    AppProvider provider = AppProvider();
    var resp = await provider.deleteUser(id);
    return resp;
  }
}
