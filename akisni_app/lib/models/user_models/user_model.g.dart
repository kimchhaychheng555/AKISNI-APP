// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      profile: json['profile'] as String?,
      active: json['active'] as bool?,
      lastLatitude: json['lastLatitude'] as String?,
      lastLongitude: json['lastLongitude'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'password': instance.password,
      'profile': instance.profile,
      'active': instance.active,
      'lastLatitude': instance.lastLatitude,
      'lastLongitude': instance.lastLongitude,
    };
