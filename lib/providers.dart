import 'package:dummy_listing_app/core/consts/api_urls.dart';

import 'core/services/http_client_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/services/listing_service.dart';

const bool isDummy = true;

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  Provider<HttpClientService>.value(
      value: isDummy
          ? FakeHttpClientService()
          : HttpClientService(ApiUrls.baseUrl)),
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<HttpClientService, ListingService>(
      update: (context, client, apiService) => ListingService(client)),
];

List<SingleChildWidget> uiConsumableProviders = [
  // StreamProvider<User>(
  //   create: (context) =>
  //       Provider.of<AuthenticationService>(context, listen: false).user,
  // )
];
