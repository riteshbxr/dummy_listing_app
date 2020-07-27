import 'package:dummy_listing_app/core/models/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'character_detail_page.dart';

class CharacterListItemWidget extends StatelessWidget {
  final CharacterItem listingItem;

  CharacterListItemWidget(this.listingItem);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CharacterDetailPage(listingItem))),
        child: ListBody(
          children: <Widget>[
            Center(child: Text("${listingItem.title}")),
            Text(
                "Released on: ${listingItem.releaseDate?.day}-${listingItem.releaseDate?.month}-${listingItem.releaseDate?.year}"),
            Text("Directed By: ${listingItem.director}"),
            Text("")
          ],
        ),
      ),
    );
  }
}
