# openrailwaymap_api.api.WikidataApi

## Load the API package
```dart
import 'package:openrailwaymap_api/api.dart';
```

All URIs are relative to *https://trackmap.jfdev.de*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wikidataImage**](WikidataApi.md#wikidataimage) | **GET** /api/wikidata/{entity} | Find the image from Wikidata


# **wikidataImage**
> wikidataImage(entity)

Find the image from Wikidata

The Wikidata image endpoint returns the URL of the image thumbnail for a given Wikidata entity. 

### Example
```dart
import 'package:openrailwaymap_api/api.dart';

final api = OpenrailwaymapApi().getWikidataApi();
final String entity = Q2655858; // String | The Wikidata entity ID 

try {
    api.wikidataImage(entity);
} catch on DioException (e) {
    print('Exception when calling WikidataApi->wikidataImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **String**| The Wikidata entity ID  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

