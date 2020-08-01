import 'package:flutter/material.dart';
import '../core/consts/route_paths.dart';
import '../ui/views/home_page.dart';
import 'views/films/concept_list_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(
            builder: (_) => MyHomePage(title: 'Flutter Concepts by Ritesh'));
      case RoutePaths.ListPage:
        return MaterialPageRoute(builder: (_) => ConceptListPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
