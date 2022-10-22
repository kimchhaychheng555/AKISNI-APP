import 'package:akisni_app/models/core_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'location_list_model.g.dart';

@JsonSerializable()
class LocationListModel extends CoreModel {
  final String? id;
  final String? title;
  final String? company;
  final String? name;
  final String? installDate;
  final String? power;
  final String? type;
  final String? location;
  final double? latitude;
  final double? longitude;

  LocationListModel({
    this.id,
    this.type,
    this.title,
    this.company,
    this.name,
    this.installDate,
    this.power,
    this.location,
    this.latitude,
    this.longitude,
  });

  factory LocationListModel.fromJson(Map<String, dynamic> json) =>
      _$LocationListModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationListModelToJson(this);
}
