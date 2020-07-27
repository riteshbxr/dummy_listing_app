import 'dart:convert';
import '../../core/consts/api_urls.dart';
import '../../core/services/http_client_service.dart';
import '../models/film_item.dart';

class ListingService {
  HttpClientService client;
  ListingService(this.client);
  Future<List<FilmItem>> getListings() async {
    // Get user profile for id
    var response = await client.fetchData(ApiUrls.fetchListingApi);
    List<FilmItem> data = List<FilmItem>.from(
        json.decode(response)['results'].map((c) => FilmItem.fromJson(c)));
    return data;
  }
}
