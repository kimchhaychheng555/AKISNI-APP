// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part 'user_active_model.g.dart';

@JsonSerializable()
class UserActiveModel {
  final int? id;
  final String? user_id;
  final String? fullName;
  final String? phoneNumber;
  final String? username;
  final String? password;
  final String? role;
  final String? profile;
  final String? active;
  final double? lastLatitude;
  final double? lastLongitude;
  final DateTime? created_at;
  final DateTime? updated_at;

  UserActiveModel({
    this.id,
    this.user_id,
    this.fullName,
    this.phoneNumber,
    this.username,
    this.password,
    this.role,
    this.profile,
    this.active,
    this.lastLatitude,
    this.lastLongitude,
    this.created_at,
    this.updated_at,
  });

  factory UserActiveModel.fromJson(Map<String, dynamic> json) =>
      _$UserActiveModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserActiveModelToJson(this);
}
