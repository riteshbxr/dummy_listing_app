import 'package:json_annotation/json_annotation.dart';

part 'concept_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class ConceptItem {
  ConceptItem({this.title, this.subtitle});
  String title;
  String subtitle;
  @JsonKey(ignore: true)
  Map<String, dynamic> jsonObject;

  factory ConceptItem.fromJson(Map<String, dynamic> json) {
    var objectData = _$ConceptItemFromJson(json);
    objectData.jsonObject = json;
    return objectData;
  }
  toJson() => jsonObject;
}
