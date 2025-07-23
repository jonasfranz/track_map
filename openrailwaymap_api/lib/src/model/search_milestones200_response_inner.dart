//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_milestones200_response_inner.g.dart';

/// SearchMilestones200ResponseInner
///
/// Properties:
/// * [latitude] 
/// * [longitude] 
/// * [osmId] - OSM node ID 
/// * [lineRef] - Reference number of the railway line the feature is located on. 
/// * [milestoneRef] - Reference number of the feature. 
/// * [operator_] - operator of the infrastructure 
/// * [railway] - type of the facility following Tagging rules (https://wiki.openstreetmap.org/wiki/OpenRailwayMap/Tagging#Operating_Sites), e.g. `milestone`, `level_crossing`, `signal`. 
/// * [position] - Mileage of the feature 
/// * [wikidata] 
/// * [wikimediaCommons] 
/// * [image] 
/// * [mapillary] 
/// * [wikipedia] 
/// * [note] 
/// * [description] 
@BuiltValue()
abstract class SearchMilestones200ResponseInner implements Built<SearchMilestones200ResponseInner, SearchMilestones200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'latitude')
  num? get latitude;

  @BuiltValueField(wireName: r'longitude')
  num? get longitude;

  /// OSM node ID 
  @BuiltValueField(wireName: r'osm_id')
  int? get osmId;

  /// Reference number of the railway line the feature is located on. 
  @BuiltValueField(wireName: r'line_ref')
  String? get lineRef;

  /// Reference number of the feature. 
  @BuiltValueField(wireName: r'milestone_ref')
  String? get milestoneRef;

  /// operator of the infrastructure 
  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  /// type of the facility following Tagging rules (https://wiki.openstreetmap.org/wiki/OpenRailwayMap/Tagging#Operating_Sites), e.g. `milestone`, `level_crossing`, `signal`. 
  @BuiltValueField(wireName: r'railway')
  String? get railway;

  /// Mileage of the feature 
  @BuiltValueField(wireName: r'position')
  String? get position;

  @BuiltValueField(wireName: r'wikidata')
  String? get wikidata;

  @BuiltValueField(wireName: r'wikimedia_commons')
  String? get wikimediaCommons;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'mapillary')
  String? get mapillary;

  @BuiltValueField(wireName: r'wikipedia')
  String? get wikipedia;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'description')
  String? get description;

  SearchMilestones200ResponseInner._();

  factory SearchMilestones200ResponseInner([void updates(SearchMilestones200ResponseInnerBuilder b)]) = _$SearchMilestones200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchMilestones200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchMilestones200ResponseInner> get serializer => _$SearchMilestones200ResponseInnerSerializer();
}

class _$SearchMilestones200ResponseInnerSerializer implements PrimitiveSerializer<SearchMilestones200ResponseInner> {
  @override
  final Iterable<Type> types = const [SearchMilestones200ResponseInner, _$SearchMilestones200ResponseInner];

  @override
  final String wireName = r'SearchMilestones200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchMilestones200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.osmId != null) {
      yield r'osm_id';
      yield serializers.serialize(
        object.osmId,
        specifiedType: const FullType(int),
      );
    }
    if (object.lineRef != null) {
      yield r'line_ref';
      yield serializers.serialize(
        object.lineRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.milestoneRef != null) {
      yield r'milestone_ref';
      yield serializers.serialize(
        object.milestoneRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(String),
      );
    }
    if (object.railway != null) {
      yield r'railway';
      yield serializers.serialize(
        object.railway,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(String),
      );
    }
    if (object.wikidata != null) {
      yield r'wikidata';
      yield serializers.serialize(
        object.wikidata,
        specifiedType: const FullType(String),
      );
    }
    if (object.wikimediaCommons != null) {
      yield r'wikimedia_commons';
      yield serializers.serialize(
        object.wikimediaCommons,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.mapillary != null) {
      yield r'mapillary';
      yield serializers.serialize(
        object.mapillary,
        specifiedType: const FullType(String),
      );
    }
    if (object.wikipedia != null) {
      yield r'wikipedia';
      yield serializers.serialize(
        object.wikipedia,
        specifiedType: const FullType(String),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchMilestones200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchMilestones200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.longitude = valueDes;
          break;
        case r'osm_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.osmId = valueDes;
          break;
        case r'line_ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lineRef = valueDes;
          break;
        case r'milestone_ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.milestoneRef = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'railway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.railway = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.position = valueDes;
          break;
        case r'wikidata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wikidata = valueDes;
          break;
        case r'wikimedia_commons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wikimediaCommons = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'mapillary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mapillary = valueDes;
          break;
        case r'wikipedia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wikipedia = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchMilestones200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchMilestones200ResponseInnerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

