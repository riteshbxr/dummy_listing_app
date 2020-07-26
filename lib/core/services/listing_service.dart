import 'dart:convert';
import '../../core/consts/api_urls.dart';
import '../../core/services/http_client_service.dart';
import '../models/item_listing.dart';

class ListingService {
  HttpClientService client;
  ListingService(this.client);
  Future<List<ItemListing>> getListings() async {
    // Get user profile for id
    var response = await client.fetchData(ApiUrls.fetchListingApi);
    List<ItemListing> data = List<ItemListing>.from(
        json.decode(response)['results'].map((c) => ItemListing.fromJson(c)));
    return data;
  }
}
