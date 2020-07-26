import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final String title;

  final Widget actionButton;

  BaseScaffold({this.title, this.body, this.actionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(this.title),
      ),
      body: this.body,
      floatingActionButton: this.actionButton,
    );
  }
}
