import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:http/http.dart' as http;
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class AppProvider extends GetConnect {
  Future<Response> ping() => get('${API_STRING_URL}ping');

  Future<Response> upload(
      {String? path, String? name, Uint8List? uint8list}) async {
    if (kIsWeb) {
      var uri = Uri.parse("${API_STRING_URL}image/$name");
      var request = http.MultipartRequest("POST", uri);
      List<int> bytes = uint8list!;

      var multipartFile = http.MultipartFile.fromBytes(
        'image',
        bytes,
        filename: name,
      );
      request.files.add(multipartFile);
      var response = await request.send();
      return Response(statusCode: response.statusCode, body: name);
    } else {
      var extension = p.extension(name ?? "");
      extension = extension.replaceAll(".", "");

      return post(
        '${API_STRING_URL}image/$name',
        FormData({
          'image': MultipartFile(File(path!), filename: name ?? ""),
        }),
      );
    }
  }

  // USER
  Future<Response> getUser() => get('${API_STRING_URL}user');
  Future<Response> getUserFindOne(String id) =>
      get('${API_STRING_URL}user/$id');

  Future<Response> createUser(Map<String, dynamic> body) =>
      post('${API_STRING_URL}user', body);

  Future<Response> updateUser(Map<String, dynamic> body) =>
      post('${API_STRING_URL}user/update', body);

  Future<Response> loginUser(Map<String, dynamic> body) =>
      post('${API_STRING_URL}user/login', body);

  Future<Response> deleteUser(String id) => delete('${API_STRING_URL}user/$id');

  // ACTIVE USER
  Future<Response> getActiveUser() => get('${API_STRING_URL}userActive');
  Future<Response> getActiveUserFindOne(String id) =>
      get('${API_STRING_URL}userActive/$id');

  Future<Response> createActiveUser(Map<String, dynamic> body) =>
      post('${API_STRING_URL}userActive', body);

  Future<Response> updateActiveUser(Map<String, dynamic> body) =>
      post('${API_STRING_URL}userActive/update', body);

  Future<Response> deleteActiveUser(String id) =>
      delete('${API_STRING_URL}userActive/$id');

  // LOCATION LIST
  Future<Response> getLocationList() => get('${API_STRING_URL}locations');
  Future<Response> getLocationListFindOne(String id) =>
      get('${API_STRING_URL}locations/$id');

  Future<Response> createLocationList(Map<String, dynamic> body) =>
      post('${API_STRING_URL}locations', body);

  Future<Response> updateLocationList(Map<String, dynamic> body) =>
      post('${API_STRING_URL}locations/update', body);

  Future<Response> deleteLocationList(String id) =>
      delete('${API_STRING_URL}locations/$id');
}
