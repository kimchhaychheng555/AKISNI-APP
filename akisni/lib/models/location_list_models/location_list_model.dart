// ignore_for_file: non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';
part 'location_list_model.g.dart';

@JsonSerializable()
class LocationListModel {
  final String? id;
  final String? title;
  final String? company;
  final String? name;
  final String? installDate;
  final String? power;
  final String? type;
  final String? location;
  final String? image;
  final double? latitude;
  final double? longitude;
  final DateTime? created_at;
  final DateTime? updated_at;

  LocationListModel({
    this.id,
    this.type,
    this.title,
    this.company,
    this.name,
    this.installDate,
    this.power,
    this.location,
    this.image,
    this.latitude,
    this.longitude,
    this.created_at,
    this.updated_at,
  });

  factory LocationListModel.fromJson(Map<String, dynamic> json) =>
      _$LocationListModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationListModelToJson(this);
}
