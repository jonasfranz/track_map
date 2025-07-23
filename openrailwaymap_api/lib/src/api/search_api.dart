//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:openrailwaymap_api/src/api_util.dart';
import 'package:openrailwaymap_api/src/model/search_facilities200_response_inner.dart';
import 'package:openrailwaymap_api/src/model/search_milestones200_response_inner.dart';

class SearchApi {
  final Dio _dio;

  final Serializers _serializers;

  const SearchApi(this._dio, this._serializers);

  /// Facility search
  /// The facility endpoint returns detail of a facility (station, junction, yard, …) by its name, UIC reference or reference.  The parameters q, name, ref and uic_ref are mutually exclusive.  It takes the first keyword of (name,uicref,ref) and the optional the operator to search for the data.
  ///
  /// Parameters:
  /// * [q] - search term (will be looked up in all `name=*` tags, `railway:ref=*` and `uic_ref=*`)
  /// * [name] - search term (name search only)
  /// * [ref] - search by official facility reference number/code only
  /// * [uicRef] - search by UIC reference number of a station (uses OSM tag `uic_ref=*`)
  /// * [limit] - maximum number of results
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SearchFacilities200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<SearchFacilities200ResponseInner>>> searchFacilities({
    String? q,
    String? name,
    String? ref,
    String? uicRef,
    int? limit = 20,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/facility';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (q != null) r'q': encodeQueryParameter(_serializers, q, const FullType(String)),
      if (name != null) r'name': encodeQueryParameter(_serializers, name, const FullType(String)),
      if (ref != null) r'ref': encodeQueryParameter(_serializers, ref, const FullType(String)),
      if (uicRef != null)
        r'uic_ref': encodeQueryParameter(_serializers, uicRef, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SearchFacilities200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(SearchFacilities200ResponseInner)]),
            ) as BuiltList<SearchFacilities200ResponseInner>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<SearchFacilities200ResponseInner>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Milestone search
  /// The milestone endpoint returns the position of milestones or other items such as signals or level crossings with a mapped position on a line.  The API will return the features within a maximum distance of 10 km (hardcoded). The presence of an &#x60;operator&#x3D;*&#x60; tag on the tracks is honoured, it will be used to distinguish reference numbers used by different infrastructure operators and/or in different countries.  Mileage is read from the OSM tags &#x60;railway:position&#x3D;*&#x60; and &#x60;railway:position:exact&#x3D;*&#x60; with precedence of the exact mileage. The tracks must be tagged with a reference number (OSM tag &#x60;ref&#x3D;*&#x60;).  The tracks must not tagged with &#x60;service&#x3D;*&#x60; (this condition does not apply to tracks with &#x60;usage&#x3D;industrial/military/test&#x60;).  Negative mileage is supported but gaps in mileage or duplicated positions (if railway lines are reroute) are not supported. For example, you cannot query for &#x60;16.8+200&#x60; or things like that.
  ///
  /// Parameters:
  /// * [ref] - reference number of the railway route the mileage refers to (in this case, route means lines as infrastructure, not the services using the tracks)
  /// * [position] - position (can be negative)
  /// * [limit] - maximum number of results
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<SearchMilestones200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<SearchMilestones200ResponseInner>>> searchMilestones({
    required String ref,
    required num position,
    int? limit = 20,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/milestone';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'ref': encodeQueryParameter(_serializers, ref, const FullType(String)),
      r'position': encodeQueryParameter(_serializers, position, const FullType(num)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<SearchMilestones200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(BuiltList, [FullType(SearchMilestones200ResponseInner)]),
            ) as BuiltList<SearchMilestones200ResponseInner>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<SearchMilestones200ResponseInner>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
