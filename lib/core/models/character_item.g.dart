// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterItem _$CharacterItemFromJson(Map<String, dynamic> json) {
  return CharacterItem(
    title: json['title'] as String,
    episodeId: json['episode_id'] as int,
    openingCrawl: json['opening_crawl'] as String,
  )
    ..director = json['director'] as String
    ..producer = json['producer'] as String
    ..releaseDate = json['release_date'] == null
        ? null
        : DateTime.parse(json['release_date'] as String)
    ..species = (json['species'] as List)?.map((e) => e as String)?.toList()
    ..starships = (json['starships'] as List)?.map((e) => e as String)?.toList()
    ..vehcles = (json['vehcles'] as List)?.map((e) => e as String)?.toList()
    ..characters =
        (json['characters'] as List)?.map((e) => e as String)?.toList()
    ..planets = (json['planets'] as List)?.map((e) => e as String)?.toList()
    ..url = json['url'] as String
    ..created = json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String)
    ..edited = json['edited'] == null
        ? null
        : DateTime.parse(json['edited'] as String);
}

Map<String, dynamic> _$CharacterItemToJson(CharacterItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'opening_crawl': instance.openingCrawl,
      'director': instance.director,
      'producer': instance.producer,
      'release_date': instance.releaseDate?.toIso8601String(),
      'species': instance.species,
      'starships': instance.starships,
      'vehcles': instance.vehcles,
      'characters': instance.characters,
      'planets': instance.planets,
      'url': instance.url,
      'created': instance.created?.toIso8601String(),
      'edited': instance.edited?.toIso8601String(),
      'episode_id': instance.episodeId,
    };
