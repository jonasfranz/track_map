# openrailwaymap_api.api.ReplicationApi

## Load the API package
```dart
import 'package:openrailwaymap_api/api.dart';
```

All URIs are relative to *https://trackmap.jfdev.de*

Method | HTTP request | Description
------------- | ------------- | -------------
[**replicationTimestamp**](ReplicationApi.md#replicationtimestamp) | **GET** /api/replication_timestamp | Replication endpoint


# **replicationTimestamp**
> ReplicationTimestamp200Response replicationTimestamp()

Replication endpoint

The replication timestamp of the OpenStreetMap data

### Example
```dart
import 'package:openrailwaymap_api/api.dart';

final api = OpenrailwaymapApi().getReplicationApi();

try {
    final response = api.replicationTimestamp();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReplicationApi->replicationTimestamp: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ReplicationTimestamp200Response**](ReplicationTimestamp200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

