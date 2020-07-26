import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/models/item_listing.dart';

class ItemListingItemWidget extends StatelessWidget {
  final ItemListing listingItem;

  ItemListingItemWidget(this.listingItem);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: false,
        isThreeLine: true,
        title: Center(child: Text("${listingItem.name}")),
        subtitle: Text("${listingItem.starships.substring(0, 150)}..."));
  }
}
