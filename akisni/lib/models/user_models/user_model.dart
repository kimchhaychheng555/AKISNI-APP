// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? id;
  String? fullName;
  String? phoneNumber;
  String? username;
  String? password;
  String? role;
  String? profile;
  double? lastLatitude;
  double? lastLongitude;
  DateTime? created_at;
  DateTime? updated_at;

  UserModel({
    this.id,
    this.fullName,
    this.phoneNumber,
    this.username,
    this.password,
    this.role,
    this.profile,
    this.lastLatitude,
    this.lastLongitude,
    this.created_at,
    this.updated_at,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}