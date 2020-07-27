import 'package:flutter/material.dart';

class GenericDetailWidget extends StatelessWidget {
  final Map<String, dynamic> object;
  GenericDetailWidget(this.object);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: object.keys
          .map(
            (field) => ListTile(
              title: Text(field.toString().toUpperCase()),
              subtitle: Text(object[field].toString()),
            ),
          )
          .toList(),
    );
  }
}
