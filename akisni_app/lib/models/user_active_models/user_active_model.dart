import 'package:akisni_app/models/core_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_active_model.g.dart';

@JsonSerializable()
class UserActiveModel extends CoreModel {
  final String? fullName;
  final String? phoneNumber;
  final String? username;
  final String? password;
  final String? role;
  final String? profile;
  final bool? active;
  final double? lastLatitude;
  final double? lastLongitude;

  UserActiveModel({
    this.fullName,
    this.phoneNumber,
    this.username,
    this.password,
    this.role,
    this.profile,
    this.active,
    this.lastLatitude,
    this.lastLongitude,
  });

  factory UserActiveModel.fromJson(Map<String, dynamic> json) =>
      _$UserActiveModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserActiveModelToJson(this);
}
