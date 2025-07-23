// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_facilities200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchFacilities200ResponseInnerOsmTypesEnum
    _$searchFacilities200ResponseInnerOsmTypesEnum_N =
    const SearchFacilities200ResponseInnerOsmTypesEnum._('N');
const SearchFacilities200ResponseInnerOsmTypesEnum
    _$searchFacilities200ResponseInnerOsmTypesEnum_W =
    const SearchFacilities200ResponseInnerOsmTypesEnum._('W');

SearchFacilities200ResponseInnerOsmTypesEnum
    _$searchFacilities200ResponseInnerOsmTypesEnumValueOf(String name) {
  switch (name) {
    case 'N':
      return _$searchFacilities200ResponseInnerOsmTypesEnum_N;
    case 'W':
      return _$searchFacilities200ResponseInnerOsmTypesEnum_W;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SearchFacilities200ResponseInnerOsmTypesEnum>
    _$searchFacilities200ResponseInnerOsmTypesEnumValues = BuiltSet<
        SearchFacilities200ResponseInnerOsmTypesEnum>(const <SearchFacilities200ResponseInnerOsmTypesEnum>[
  _$searchFacilities200ResponseInnerOsmTypesEnum_N,
  _$searchFacilities200ResponseInnerOsmTypesEnum_W,
]);

Serializer<SearchFacilities200ResponseInnerOsmTypesEnum>
    _$searchFacilities200ResponseInnerOsmTypesEnumSerializer =
    _$SearchFacilities200ResponseInnerOsmTypesEnumSerializer();

class _$SearchFacilities200ResponseInnerOsmTypesEnumSerializer
    implements
        PrimitiveSerializer<SearchFacilities200ResponseInnerOsmTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'N': 'N',
    'W': 'W',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'N': 'N',
    'W': 'W',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SearchFacilities200ResponseInnerOsmTypesEnum
  ];
  @override
  final String wireName = 'SearchFacilities200ResponseInnerOsmTypesEnum';

  @override
  Object serialize(Serializers serializers,
          SearchFacilities200ResponseInnerOsmTypesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SearchFacilities200ResponseInnerOsmTypesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SearchFacilities200ResponseInnerOsmTypesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SearchFacilities200ResponseInner
    extends SearchFacilities200ResponseInner {
  @override
  final num? latitude;
  @override
  final num? longitude;
  @override
  final BuiltList<int>? osmIds;
  @override
  final BuiltList<SearchFacilities200ResponseInnerOsmTypesEnum>? osmTypes;
  @override
  final String? name;
  @override
  final String? railway;
  @override
  final String? station;
  @override
  final String? railwayRef;
  @override
  final String? uicRef;
  @override
  final BuiltList<String>? operator_;
  @override
  final BuiltList<String>? network;
  @override
  final BuiltList<String>? wikidata;
  @override
  final BuiltList<String>? wikimediaCommons;
  @override
  final BuiltList<String>? image;
  @override
  final BuiltList<String>? mapillary;
  @override
  final BuiltList<String>? wikipedia;
  @override
  final BuiltList<String>? note;
  @override
  final BuiltList<String>? description;
  @override
  final int? rank;

  factory _$SearchFacilities200ResponseInner(
          [void Function(SearchFacilities200ResponseInnerBuilder)? updates]) =>
      (SearchFacilities200ResponseInnerBuilder()..update(updates))._build();

  _$SearchFacilities200ResponseInner._(
      {this.latitude,
      this.longitude,
      this.osmIds,
      this.osmTypes,
      this.name,
      this.railway,
      this.station,
      this.railwayRef,
      this.uicRef,
      this.operator_,
      this.network,
      this.wikidata,
      this.wikimediaCommons,
      this.image,
      this.mapillary,
      this.wikipedia,
      this.note,
      this.description,
      this.rank})
      : super._();
  @override
  SearchFacilities200ResponseInner rebuild(
          void Function(SearchFacilities200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchFacilities200ResponseInnerBuilder toBuilder() =>
      SearchFacilities200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchFacilities200ResponseInner &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        osmIds == other.osmIds &&
        osmTypes == other.osmTypes &&
        name == other.name &&
        railway == other.railway &&
        station == other.station &&
        railwayRef == other.railwayRef &&
        uicRef == other.uicRef &&
        operator_ == other.operator_ &&
        network == other.network &&
        wikidata == other.wikidata &&
        wikimediaCommons == other.wikimediaCommons &&
        image == other.image &&
        mapillary == other.mapillary &&
        wikipedia == other.wikipedia &&
        note == other.note &&
        description == other.description &&
        rank == other.rank;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, osmIds.hashCode);
    _$hash = $jc(_$hash, osmTypes.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, railway.hashCode);
    _$hash = $jc(_$hash, station.hashCode);
    _$hash = $jc(_$hash, railwayRef.hashCode);
    _$hash = $jc(_$hash, uicRef.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jc(_$hash, wikidata.hashCode);
    _$hash = $jc(_$hash, wikimediaCommons.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, mapillary.hashCode);
    _$hash = $jc(_$hash, wikipedia.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchFacilities200ResponseInner')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('osmIds', osmIds)
          ..add('osmTypes', osmTypes)
          ..add('name', name)
          ..add('railway', railway)
          ..add('station', station)
          ..add('railwayRef', railwayRef)
          ..add('uicRef', uicRef)
          ..add('operator_', operator_)
          ..add('network', network)
          ..add('wikidata', wikidata)
          ..add('wikimediaCommons', wikimediaCommons)
          ..add('image', image)
          ..add('mapillary', mapillary)
          ..add('wikipedia', wikipedia)
          ..add('note', note)
          ..add('description', description)
          ..add('rank', rank))
        .toString();
  }
}

class SearchFacilities200ResponseInnerBuilder
    implements
        Builder<SearchFacilities200ResponseInner,
            SearchFacilities200ResponseInnerBuilder> {
  _$SearchFacilities200ResponseInner? _$v;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  ListBuilder<int>? _osmIds;
  ListBuilder<int> get osmIds => _$this._osmIds ??= ListBuilder<int>();
  set osmIds(ListBuilder<int>? osmIds) => _$this._osmIds = osmIds;

  ListBuilder<SearchFacilities200ResponseInnerOsmTypesEnum>? _osmTypes;
  ListBuilder<SearchFacilities200ResponseInnerOsmTypesEnum> get osmTypes =>
      _$this._osmTypes ??=
          ListBuilder<SearchFacilities200ResponseInnerOsmTypesEnum>();
  set osmTypes(
          ListBuilder<SearchFacilities200ResponseInnerOsmTypesEnum>?
              osmTypes) =>
      _$this._osmTypes = osmTypes;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _railway;
  String? get railway => _$this._railway;
  set railway(String? railway) => _$this._railway = railway;

  String? _station;
  String? get station => _$this._station;
  set station(String? station) => _$this._station = station;

  String? _railwayRef;
  String? get railwayRef => _$this._railwayRef;
  set railwayRef(String? railwayRef) => _$this._railwayRef = railwayRef;

  String? _uicRef;
  String? get uicRef => _$this._uicRef;
  set uicRef(String? uicRef) => _$this._uicRef = uicRef;

  ListBuilder<String>? _operator_;
  ListBuilder<String> get operator_ =>
      _$this._operator_ ??= ListBuilder<String>();
  set operator_(ListBuilder<String>? operator_) =>
      _$this._operator_ = operator_;

  ListBuilder<String>? _network;
  ListBuilder<String> get network => _$this._network ??= ListBuilder<String>();
  set network(ListBuilder<String>? network) => _$this._network = network;

  ListBuilder<String>? _wikidata;
  ListBuilder<String> get wikidata =>
      _$this._wikidata ??= ListBuilder<String>();
  set wikidata(ListBuilder<String>? wikidata) => _$this._wikidata = wikidata;

  ListBuilder<String>? _wikimediaCommons;
  ListBuilder<String> get wikimediaCommons =>
      _$this._wikimediaCommons ??= ListBuilder<String>();
  set wikimediaCommons(ListBuilder<String>? wikimediaCommons) =>
      _$this._wikimediaCommons = wikimediaCommons;

  ListBuilder<String>? _image;
  ListBuilder<String> get image => _$this._image ??= ListBuilder<String>();
  set image(ListBuilder<String>? image) => _$this._image = image;

  ListBuilder<String>? _mapillary;
  ListBuilder<String> get mapillary =>
      _$this._mapillary ??= ListBuilder<String>();
  set mapillary(ListBuilder<String>? mapillary) =>
      _$this._mapillary = mapillary;

  ListBuilder<String>? _wikipedia;
  ListBuilder<String> get wikipedia =>
      _$this._wikipedia ??= ListBuilder<String>();
  set wikipedia(ListBuilder<String>? wikipedia) =>
      _$this._wikipedia = wikipedia;

  ListBuilder<String>? _note;
  ListBuilder<String> get note => _$this._note ??= ListBuilder<String>();
  set note(ListBuilder<String>? note) => _$this._note = note;

  ListBuilder<String>? _description;
  ListBuilder<String> get description =>
      _$this._description ??= ListBuilder<String>();
  set description(ListBuilder<String>? description) =>
      _$this._description = description;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  SearchFacilities200ResponseInnerBuilder() {
    SearchFacilities200ResponseInner._defaults(this);
  }

  SearchFacilities200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _osmIds = $v.osmIds?.toBuilder();
      _osmTypes = $v.osmTypes?.toBuilder();
      _name = $v.name;
      _railway = $v.railway;
      _station = $v.station;
      _railwayRef = $v.railwayRef;
      _uicRef = $v.uicRef;
      _operator_ = $v.operator_?.toBuilder();
      _network = $v.network?.toBuilder();
      _wikidata = $v.wikidata?.toBuilder();
      _wikimediaCommons = $v.wikimediaCommons?.toBuilder();
      _image = $v.image?.toBuilder();
      _mapillary = $v.mapillary?.toBuilder();
      _wikipedia = $v.wikipedia?.toBuilder();
      _note = $v.note?.toBuilder();
      _description = $v.description?.toBuilder();
      _rank = $v.rank;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchFacilities200ResponseInner other) {
    _$v = other as _$SearchFacilities200ResponseInner;
  }

  @override
  void update(void Function(SearchFacilities200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchFacilities200ResponseInner build() => _build();

  _$SearchFacilities200ResponseInner _build() {
    _$SearchFacilities200ResponseInner _$result;
    try {
      _$result = _$v ??
          _$SearchFacilities200ResponseInner._(
            latitude: latitude,
            longitude: longitude,
            osmIds: _osmIds?.build(),
            osmTypes: _osmTypes?.build(),
            name: name,
            railway: railway,
            station: station,
            railwayRef: railwayRef,
            uicRef: uicRef,
            operator_: _operator_?.build(),
            network: _network?.build(),
            wikidata: _wikidata?.build(),
            wikimediaCommons: _wikimediaCommons?.build(),
            image: _image?.build(),
            mapillary: _mapillary?.build(),
            wikipedia: _wikipedia?.build(),
            note: _note?.build(),
            description: _description?.build(),
            rank: rank,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'osmIds';
        _osmIds?.build();
        _$failedField = 'osmTypes';
        _osmTypes?.build();

        _$failedField = 'operator_';
        _operator_?.build();
        _$failedField = 'network';
        _network?.build();
        _$failedField = 'wikidata';
        _wikidata?.build();
        _$failedField = 'wikimediaCommons';
        _wikimediaCommons?.build();
        _$failedField = 'image';
        _image?.build();
        _$failedField = 'mapillary';
        _mapillary?.build();
        _$failedField = 'wikipedia';
        _wikipedia?.build();
        _$failedField = 'note';
        _note?.build();
        _$failedField = 'description';
        _description?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SearchFacilities200ResponseInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
