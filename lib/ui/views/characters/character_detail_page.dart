import 'package:dummy_listing_app/core/models/character_item.dart';
import 'package:dummy_listing_app/ui/widgets/base_sacaffold.dart';
import 'package:dummy_listing_app/ui/widgets/generic_detail_widget.dart';
import 'package:flutter/material.dart';

class CharacterDetailPage extends StatelessWidget {
  final CharacterItem characterItem;

  CharacterDetailPage(this.characterItem);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: characterItem.title,
        body: Container(child: GenericDetailWidget(characterItem.toJson())));
  }
}
