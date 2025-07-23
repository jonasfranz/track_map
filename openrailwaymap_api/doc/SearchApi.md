# openrailwaymap_api.api.SearchApi

## Load the API package
```dart
import 'package:openrailwaymap_api/api.dart';
```

All URIs are relative to *https://trackmap.jfdev.de*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchFacilities**](SearchApi.md#searchfacilities) | **GET** /api/facility | Facility search
[**searchMilestones**](SearchApi.md#searchmilestones) | **GET** /api/milestone | Milestone search


# **searchFacilities**
> BuiltList<SearchFacilities200ResponseInner> searchFacilities(q, name, ref, uicRef, limit)

Facility search

The facility endpoint returns detail of a facility (station, junction, yard, …) by its name, UIC reference or reference.  The parameters q, name, ref and uic_ref are mutually exclusive.  It takes the first keyword of (name,uicref,ref) and the optional the operator to search for the data. 

### Example
```dart
import 'package:openrailwaymap_api/api.dart';

final api = OpenrailwaymapApi().getSearchApi();
final String q = Karlsruhe; // String | search term (will be looked up in all `name=*` tags, `railway:ref=*` and `uic_ref=*`) 
final String name = Karlsruhe; // String | search term (name search only) 
final String ref = Gd; // String | search by official facility reference number/code only 
final String uicRef = uicRef_example; // String | search by UIC reference number of a station (uses OSM tag `uic_ref=*`) 
final int limit = 56; // int | maximum number of results

try {
    final response = api.searchFacilities(q, name, ref, uicRef, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->searchFacilities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| search term (will be looked up in all `name=*` tags, `railway:ref=*` and `uic_ref=*`)  | [optional] 
 **name** | **String**| search term (name search only)  | [optional] 
 **ref** | **String**| search by official facility reference number/code only  | [optional] 
 **uicRef** | **String**| search by UIC reference number of a station (uses OSM tag `uic_ref=*`)  | [optional] 
 **limit** | **int**| maximum number of results | [optional] [default to 20]

### Return type

[**BuiltList&lt;SearchFacilities200ResponseInner&gt;**](SearchFacilities200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMilestones**
> BuiltList<SearchMilestones200ResponseInner> searchMilestones(ref, position, limit)

Milestone search

The milestone endpoint returns the position of milestones or other items such as signals or level crossings with a mapped position on a line.  The API will return the features within a maximum distance of 10 km (hardcoded). The presence of an `operator=*` tag on the tracks is honoured, it will be used to distinguish reference numbers used by different infrastructure operators and/or in different countries.  Mileage is read from the OSM tags `railway:position=*` and `railway:position:exact=*` with precedence of the exact mileage. The tracks must be tagged with a reference number (OSM tag `ref=*`).  The tracks must not tagged with `service=*` (this condition does not apply to tracks with `usage=industrial/military/test`).  Negative mileage is supported but gaps in mileage or duplicated positions (if railway lines are reroute) are not supported. For example, you cannot query for `16.8+200` or things like that. 

### Example
```dart
import 'package:openrailwaymap_api/api.dart';

final api = OpenrailwaymapApi().getSearchApi();
final String ref = 4201; // String | reference number of the railway route the mileage refers to (in this case, route means lines as infrastructure, not the services using the tracks) 
final num position = 18.4; // num | position (can be negative) 
final int limit = 56; // int | maximum number of results

try {
    final response = api.searchMilestones(ref, position, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->searchMilestones: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ref** | **String**| reference number of the railway route the mileage refers to (in this case, route means lines as infrastructure, not the services using the tracks)  | 
 **position** | **num**| position (can be negative)  | 
 **limit** | **int**| maximum number of results | [optional] [default to 20]

### Return type

[**BuiltList&lt;SearchMilestones200ResponseInner&gt;**](SearchMilestones200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

