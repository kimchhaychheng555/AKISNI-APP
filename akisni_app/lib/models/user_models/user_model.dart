import 'package:akisni_app/models/core_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends CoreModel {
  final String? id;
  final String? fullName;
  final String? phoneNumber;
  final String? username;
  final String? password;
  final String? role;
  final String? profile;
  final double? lastLatitude;
  final double? lastLongitude;

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
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
