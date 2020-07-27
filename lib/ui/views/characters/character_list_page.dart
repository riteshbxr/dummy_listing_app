import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../../core/services/listing_service.dart';
import '../../widgets/base_sacaffold.dart';
import 'character_list_item_widget.dart';

class CharacterListPage extends StatefulWidget {
  @override
  _CharacterListPageState createState() => _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {
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
                      items.data.map((x) => CharacterListItemWidget(x))),
                )
              : Center(
                  child:
                      CircularProgressIndicator(semanticsLabel: "Loading...")),
        ));
  }
}
