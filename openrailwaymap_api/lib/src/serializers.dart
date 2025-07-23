//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openrailwaymap_api/src/date_serializer.dart';
import 'package:openrailwaymap_api/src/model/date.dart';

import 'package:openrailwaymap_api/src/model/replication_timestamp200_response.dart';
import 'package:openrailwaymap_api/src/model/search_facilities200_response_inner.dart';
import 'package:openrailwaymap_api/src/model/search_milestones200_response_inner.dart';

part 'serializers.g.dart';

@SerializersFor([
  ReplicationTimestamp200Response,
  SearchFacilities200ResponseInner,
  SearchMilestones200ResponseInner,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SearchFacilities200ResponseInner)]),
        () => ListBuilder<SearchFacilities200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SearchMilestones200ResponseInner)]),
        () => ListBuilder<SearchMilestones200ResponseInner>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
