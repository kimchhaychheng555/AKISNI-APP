class CoreModel {
  final String? createBy;
  final DateTime? createAt;
  final String? deleteBy;
  final DateTime? deleteAt;
  final bool? isDelete;

  CoreModel({
    this.createBy,
    this.createAt,
    this.deleteBy,
    this.deleteAt,
    this.isDelete,
  });
}
