import 'package:dummy_listing_app/ui/views/films/concept_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/models/concept_item.dart';

class ConceptListItemWidget extends StatelessWidget {
  final ConceptItem listingItem;

  ConceptListItemWidget(this.listingItem);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ConceptDetailPage(listingItem))),
      title: Text("${listingItem.title}",
          style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("${listingItem.subtitle}"),
    );
  }
}
