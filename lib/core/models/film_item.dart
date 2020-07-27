import 'package:json_annotation/json_annotation.dart';

part 'film_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FilmItem {
  FilmItem({this.title, this.episodeId, this.openingCrawl});
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

  factory FilmItem.fromJson(Map<String, dynamic> json) =>
      _$FilmItemFromJson(json);
  toJson() => _$FilmItemToJson(this);
}
