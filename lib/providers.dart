import 'core/services/http_client_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/services/listing_service.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  Provider<HttpClientService>.value(value: FakeHttpClientService())
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<HttpClientService, ListingService>(
      update: (context, client, apiService) => ListingService(client))
];

List<SingleChildWidget> uiConsumableProviders = [
  // StreamProvider<User>(
  //   create: (context) =>
  //       Provider.of<AuthenticationService>(context, listen: false).user,
  // )
];
