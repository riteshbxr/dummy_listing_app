import 'dart:convert';
import '../../core/consts/api_urls.dart';
import '../../core/services/http_client_service.dart';
import '../models/concept_item.dart';

class ListingService {
  HttpClientService client;
  ListingService(this.client);
  Future<List<ConceptItem>> getListings() async {
    // Get user profile for id
    var response = await client.fetchData(ApiUrls.fetchListingApi);
    List<ConceptItem> data = List<ConceptItem>.from(
        json.decode(response)['results'].map((c) => ConceptItem.fromJson(c)));
    return data;
  }
}
