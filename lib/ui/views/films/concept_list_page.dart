import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/services/listing_service.dart';
import '../../widgets/base_sacaffold.dart';
import 'concept_list_item_widget.dart';
import 'package:provider/provider.dart';

class ConceptListPage extends StatefulWidget {
  @override
  _ConceptListPageState createState() => _ConceptListPageState();
}

class _ConceptListPageState extends State<ConceptListPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: "List of Concepts Used!",
        body: FutureBuilder(
          initialData: [],
          future: Provider.of<ListingService>(context).getListings(),
          builder: (c, items) => items.connectionState == ConnectionState.done
              ? ListView(
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.from(
                      items.data.map((x) => ConceptListItemWidget(x))),
                )
              : Center(
                  child:
                      CircularProgressIndicator(semanticsLabel: "Loading...")),
        ));
  }
}
