import 'package:dummy_listing_app/core/models/concept_item.dart';
import 'package:dummy_listing_app/ui/widgets/base_sacaffold.dart';
import 'package:dummy_listing_app/ui/widgets/generic_detail_widget.dart';
import 'package:flutter/material.dart';

class ConceptDetailPage extends StatelessWidget {
  final ConceptItem conceptItem;

  ConceptDetailPage(this.conceptItem);

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        title: conceptItem.title,
        body: Container(child: GenericDetailWidget(conceptItem.jsonObject)));
  }
}
