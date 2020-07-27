import 'package:dummy_listing_app/core/models/film_item.dart';
import 'package:dummy_listing_app/ui/widgets/base_sacaffold.dart';
import 'package:dummy_listing_app/ui/widgets/generic_detail_widget.dart';
import 'package:flutter/material.dart';

class FilmDetailPage extends StatelessWidget {
  final FilmItem filmItem;

  FilmDetailPage(this.filmItem);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: filmItem.title,
        body: Container(child: GenericDetailWidget(filmItem.toJson())));
  }
}
