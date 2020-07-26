import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/services/listing_service.dart';
import '../../ui/widgets/base_sacaffold.dart';
import '../../ui/widgets/item_listing_item_widget.dart';
import 'package:provider/provider.dart';

class ListingItemListPage extends StatefulWidget {
  @override
  _ListingItemListPageState createState() => _ListingItemListPageState();
}

class _ListingItemListPageState extends State<ListingItemListPage> {
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
                      items.data.map((x) => ItemListingItemWidget(x))),
                )
              : Center(
                  child:
                      CircularProgressIndicator(semanticsLabel: "Loading...")),
        ));
  }
}
