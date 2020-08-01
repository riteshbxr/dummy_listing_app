import 'api_urls.dart';

const ApiDummyOutputs = {
  ApiUrls.fetchListingApi: '''
{
  "results": [
      {
          "id": 1,
          "title": "Proxy Provider",
          "subtitle": "Used for Dependency Injection",
          "details":"Can Be used to set a central list of dependent and Independent class Objects.",
           "implementation": "Currently I have a Central Provider in flutter, which has a Provider and a proxyprovicer object. Provider returns the implementations for services which have no dependency and Proxy Provider is used to return Objects which need another object/service in its constructor.\\r\\n\\r\\nIn current Scenario, There is a ListingService which provides data for this Page, but its needs a HTTPSERVICE. So LISTINg SERVICE is provided by PROXYPROVIDER and Http Api fetching service by the PROVIDER." 
          },
              {

          "title": "Fake Implementations",
          "subtitle": "Used for Testing Independently on App (Without Dependency on Api)",
          "details":"Can Be used to set a dummy service to provide you output independent of any api/database",
           "implementation": "Currently I have to fetch data from api to show this content, but alternatively to test the Proper working on app I have created another Fake Http Service which checks the ApiPath and returns a predetermined result in json format.\\r\\n\\r\\nI have another constant map file containing all the fake responses for any api. I use it to show results in FAKE HTTP SERVICE" 
          },
          {

          "title": "build_runner for Fast Coding",
          "subtitle": "Some Code Generators to code it fast",
          "details":"Can be used to created serializers and deserializers for models (@jsonSerializable) etc",
           "implementation": "More details Pending..." 
          },
          {

          "title": "Project Architecture",
          "subtitle": "Folder structure which can be easily maintained and scaled",
          "details":"More details Pending....",
           "implementation": "More details Pending..." 
          },

          {

          "title": "Generic Widgets",
          "subtitle": "Widgets which create good ui just from json data or some generic model",
          "details":"The Details Page you see here is a geenric UI which iterated through a map and shows the output with title as Key and value as Details Text",
          "Random Key": "Just to demonstrate that It is generic I have added this random key here" 
          },
          {
          "id": 4,
          "title": "More Cocepts will be added",
          "subtitle": "...",
          "details":"More details Pending....",
           "implementation": "More details Pending..." 
          }
  ]
}'''
};
