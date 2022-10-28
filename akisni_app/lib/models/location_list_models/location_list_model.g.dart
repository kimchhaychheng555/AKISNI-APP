// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationListModel _$LocationListModelFromJson(Map<String, dynamic> json) =>
    LocationListModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      company: json['company'] as String?,
      name: json['name'] as String?,
      installDate: json['installDate'] as String?,
      power: json['power'] as String?,
      location: json['location'] as String?,
      image: json['image'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationListModelToJson(LocationListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'company': instance.company,
      'name': instance.name,
      'installDate': instance.installDate,
      'power': instance.power,
      'type': instance.type,
      'location': instance.location,
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
