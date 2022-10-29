// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_active_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserActiveModel _$UserActiveModelFromJson(Map<String, dynamic> json) =>
    UserActiveModel(
      id: json['id'] as int?,
      user_id: json['user_id'] as String?,
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      profile: json['profile'] as String?,
      active: json['active'] as String?,
      lastLatitude: (json['lastLatitude'] as num?)?.toDouble(),
      lastLongitude: (json['lastLongitude'] as num?)?.toDouble(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserActiveModelToJson(UserActiveModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'password': instance.password,
      'role': instance.role,
      'profile': instance.profile,
      'active': instance.active,
      'lastLatitude': instance.lastLatitude,
      'lastLongitude': instance.lastLongitude,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
