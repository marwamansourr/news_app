import 'package:news_app/domain/entities/source_entity.dart';

class SourceModel extends SourceEntity{
  const SourceModel({
    super.id,
    super.name,
  });
  factory SourceModel.fromMap(Map<String, dynamic> json) => SourceModel(
    id: json["id"] ?? " ",
    name: json["name"] ?? " ",

  );
}