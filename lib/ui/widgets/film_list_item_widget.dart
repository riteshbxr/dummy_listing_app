import 'package:dummy_listing_app/ui/views/film_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/models/film_item.dart';

class FilmListItemWidget extends StatelessWidget {
  final FilmItem listingItem;

  FilmListItemWidget(this.listingItem);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FilmDetailPage(listingItem))),
        child: ListBody(
          children: <Widget>[
            Center(child: Text("${listingItem.title}")),
            Text(
                "Released on: ${listingItem.releaseDate.day}-${listingItem.releaseDate.month}-${listingItem.releaseDate.year}"),
            Text("Directed By: ${listingItem.director}..."),
            Text("")
          ],
        ),
      ),
    );
  }
}
