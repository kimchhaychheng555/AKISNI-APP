import 'package:akisni_app/models/core_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'app_model.g.dart';

@JsonSerializable()
class AppModel extends CoreModel {
  final String? id;
  final String? connectionStringMongo;

  AppModel({
    this.id,
    this.connectionStringMongo,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppModelToJson(this);
}
