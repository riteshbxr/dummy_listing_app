import 'package:json_annotation/json_annotation.dart';

part 'character_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CharacterItem {
  CharacterItem({this.title, this.episodeId, this.openingCrawl});
  String title;
  String openingCrawl;
  String director;
  String producer;
  DateTime releaseDate;
  List<String> species;
  List<String> starships;
  List<String> vehcles;
  List<String> characters;
  List<String> planets;
  String url;
  DateTime created;
  DateTime edited;
  int episodeId;

  factory CharacterItem.fromJson(Map<String, dynamic> json) =>
      _$CharacterItemFromJson(json);
  toJson() => _$CharacterItemToJson(this);
}
