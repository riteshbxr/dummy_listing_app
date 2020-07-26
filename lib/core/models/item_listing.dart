import 'package:json_annotation/json_annotation.dart';

part 'item_listing.g.dart';

@JsonSerializable(createToJson: false)
class ItemListing {
  ItemListing({this.name, this.id, this.starships});
  String name;
  int id;
  String starships;

  factory ItemListing.fromJson(Map<String, dynamic> json) =>
      _$ItemListingFromJson(json);
}
