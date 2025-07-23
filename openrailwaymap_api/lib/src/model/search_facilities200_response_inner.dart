//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_facilities200_response_inner.g.dart';

/// SearchFacilities200ResponseInner
///
/// Properties:
/// * [latitude] 
/// * [longitude] 
/// * [osmIds] 
/// * [osmTypes] 
/// * [name] 
/// * [railway] 
/// * [station] 
/// * [railwayRef] 
/// * [uicRef] 
/// * [operator_] 
/// * [network] 
/// * [wikidata] 
/// * [wikimediaCommons] 
/// * [image] 
/// * [mapillary] 
/// * [wikipedia] 
/// * [note] 
/// * [description] 
/// * [rank] - an importance rank calculated by taking the public transport route relations into account using this station/halt 
@BuiltValue()
abstract class SearchFacilities200ResponseInner implements Built<SearchFacilities200ResponseInner, SearchFacilities200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'latitude')
  num? get latitude;

  @BuiltValueField(wireName: r'longitude')
  num? get longitude;

  @BuiltValueField(wireName: r'osm_ids')
  BuiltList<int>? get osmIds;

  @BuiltValueField(wireName: r'osm_types')
  BuiltList<SearchFacilities200ResponseInnerOsmTypesEnum>? get osmTypes;
  // enum osmTypesEnum {  N,  W,  };

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'railway')
  String? get railway;

  @BuiltValueField(wireName: r'station')
  String? get station;

  @BuiltValueField(wireName: r'railway_ref')
  String? get railwayRef;

  @BuiltValueField(wireName: r'uic_ref')
  String? get uicRef;

  @BuiltValueField(wireName: r'operator')
  BuiltList<String>? get operator_;

  @BuiltValueField(wireName: r'network')
  BuiltList<String>? get network;

  @BuiltValueField(wireName: r'wikidata')
  BuiltList<String>? get wikidata;

  @BuiltValueField(wireName: r'wikimedia_commons')
  BuiltList<String>? get wikimediaCommons;

  @BuiltValueField(wireName: r'image')
  BuiltList<String>? get image;

  @BuiltValueField(wireName: r'mapillary')
  BuiltList<String>? get mapillary;

  @BuiltValueField(wireName: r'wikipedia')
  BuiltList<String>? get wikipedia;

  @BuiltValueField(wireName: r'note')
  BuiltList<String>? get note;

  @BuiltValueField(wireName: r'description')
  BuiltList<String>? get description;

  /// an importance rank calculated by taking the public transport route relations into account using this station/halt 
  @BuiltValueField(wireName: r'rank')
  int? get rank;

  SearchFacilities200ResponseInner._();

  factory SearchFacilities200ResponseInner([void updates(SearchFacilities200ResponseInnerBuilder b)]) = _$SearchFacilities200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchFacilities200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchFacilities200ResponseInner> get serializer => _$SearchFacilities200ResponseInnerSerializer();
}

class _$SearchFacilities200ResponseInnerSerializer implements PrimitiveSerializer<SearchFacilities200ResponseInner> {
  @override
  final Iterable<Type> types = const [SearchFacilities200ResponseInner, _$SearchFacilities200ResponseInner];

  @override
  final String wireName = r'SearchFacilities200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchFacilities200ResponseInner object, {
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
    if (object.osmIds != null) {
      yield r'osm_ids';
      yield serializers.serialize(
        object.osmIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.osmTypes != null) {
      yield r'osm_types';
      yield serializers.serialize(
        object.osmTypes,
        specifiedType: const FullType(BuiltList, [FullType(SearchFacilities200ResponseInnerOsmTypesEnum)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.station != null) {
      yield r'station';
      yield serializers.serialize(
        object.station,
        specifiedType: const FullType(String),
      );
    }
    if (object.railwayRef != null) {
      yield r'railway_ref';
      yield serializers.serialize(
        object.railwayRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.uicRef != null) {
      yield r'uic_ref';
      yield serializers.serialize(
        object.uicRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.wikidata != null) {
      yield r'wikidata';
      yield serializers.serialize(
        object.wikidata,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.wikimediaCommons != null) {
      yield r'wikimedia_commons';
      yield serializers.serialize(
        object.wikimediaCommons,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mapillary != null) {
      yield r'mapillary';
      yield serializers.serialize(
        object.mapillary,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.wikipedia != null) {
      yield r'wikipedia';
      yield serializers.serialize(
        object.wikipedia,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.rank != null) {
      yield r'rank';
      yield serializers.serialize(
        object.rank,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchFacilities200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchFacilities200ResponseInnerBuilder result,
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
        case r'osm_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.osmIds.replace(valueDes);
          break;
        case r'osm_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SearchFacilities200ResponseInnerOsmTypesEnum)]),
          ) as BuiltList<SearchFacilities200ResponseInnerOsmTypesEnum>;
          result.osmTypes.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'railway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.railway = valueDes;
          break;
        case r'station':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.station = valueDes;
          break;
        case r'railway_ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.railwayRef = valueDes;
          break;
        case r'uic_ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uicRef = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.operator_.replace(valueDes);
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.network.replace(valueDes);
          break;
        case r'wikidata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.wikidata.replace(valueDes);
          break;
        case r'wikimedia_commons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.wikimediaCommons.replace(valueDes);
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.image.replace(valueDes);
          break;
        case r'mapillary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.mapillary.replace(valueDes);
          break;
        case r'wikipedia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.wikipedia.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.note.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.description.replace(valueDes);
          break;
        case r'rank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rank = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchFacilities200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchFacilities200ResponseInnerBuilder();
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

class SearchFacilities200ResponseInnerOsmTypesEnum extends EnumClass {

  /// The type of OSM object, same order as the IDs 
  @BuiltValueEnumConst(wireName: r'N')
  static const SearchFacilities200ResponseInnerOsmTypesEnum N = _$searchFacilities200ResponseInnerOsmTypesEnum_N;
  /// The type of OSM object, same order as the IDs 
  @BuiltValueEnumConst(wireName: r'W')
  static const SearchFacilities200ResponseInnerOsmTypesEnum W = _$searchFacilities200ResponseInnerOsmTypesEnum_W;

  static Serializer<SearchFacilities200ResponseInnerOsmTypesEnum> get serializer => _$searchFacilities200ResponseInnerOsmTypesEnumSerializer;

  const SearchFacilities200ResponseInnerOsmTypesEnum._(String name): super(name);

  static BuiltSet<SearchFacilities200ResponseInnerOsmTypesEnum> get values => _$searchFacilities200ResponseInnerOsmTypesEnumValues;
  static SearchFacilities200ResponseInnerOsmTypesEnum valueOf(String name) => _$searchFacilities200ResponseInnerOsmTypesEnumValueOf(name);
}

