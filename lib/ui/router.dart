import 'package:flutter/material.dart';
import '../core/consts/route_paths.dart';
import '../ui/views/home_page.dart';
import '../ui/views/listing_item_list_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(
            builder: (_) => MyHomePage(title: 'Demo for Fivrr'));
      case RoutePaths.ListPage:
        return MaterialPageRoute(builder: (_) => ListingItemListPage());

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
