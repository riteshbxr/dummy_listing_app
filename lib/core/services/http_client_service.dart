import 'dart:io';

import 'package:dummy_listing_app/core/consts/api_urls.dart';

import '../../core/consts/fake_http_outputs.dart';
import 'package:http/http.dart' as http;

class HttpClientService {
  String baseUrl;
  HttpClientService(this.baseUrl);
  Future<String> fetchData(String api) async {
    var data = await http.get("$baseUrl/$api");
    if (data.statusCode == 200) {
      return data.body;
    } else {
      throw HttpException(
          "Failed with Status Code ${data.statusCode} & ${data.reasonPhrase}");
    }
  }
}

class FakeHttpClientService extends HttpClientService {
  FakeHttpClientService() : super(null);

  Future<String> fetchData(String api) async {
    await Future.delayed(Duration(seconds: 2));
    switch (api) {
      case ApiUrls.fetchListingApi:
        return ApiDummyOutputs[api];
      default:
        return "";
    }
  }
}
