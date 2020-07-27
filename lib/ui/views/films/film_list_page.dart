import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/services/listing_service.dart';
import '../../widgets/base_sacaffold.dart';
import 'film_list_item_widget.dart';
import 'package:provider/provider.dart';

class FilmListPage extends StatefulWidget {
  @override
  _FilmListPageState createState() => _FilmListPageState();
}

class _FilmListPageState extends State<FilmListPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: "List of Movies!",
        body: FutureBuilder(
          initialData: [],
          future: Provider.of<ListingService>(context).getListings(),
          builder: (c, items) => items.connectionState == ConnectionState.done
              ? ListView(
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.from(
                      items.data.map((x) => FilmListItemWidget(x))),
                )
              : Center(
                  child:
                      CircularProgressIndicator(semanticsLabel: "Loading...")),
        ));
  }
}