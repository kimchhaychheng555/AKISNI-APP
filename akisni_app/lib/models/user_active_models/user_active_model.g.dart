// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_active_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserActiveModel _$UserActiveModelFromJson(Map<String, dynamic> json) =>
    UserActiveModel(
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      profile: json['profile'] as String?,
      active: json['active'] as bool?,
      lastLatitude: (json['lastLatitude'] as num?)?.toDouble(),
      lastLongitude: (json['lastLongitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserActiveModelToJson(UserActiveModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'password': instance.password,
      'role': instance.role,
      'profile': instance.profile,
      'active': instance.active,
      'lastLatitude': instance.lastLatitude,
      'lastLongitude': instance.lastLongitude,
    };
