// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_milestones200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchMilestones200ResponseInner
    extends SearchMilestones200ResponseInner {
  @override
  final num? latitude;
  @override
  final num? longitude;
  @override
  final int? osmId;
  @override
  final String? lineRef;
  @override
  final String? milestoneRef;
  @override
  final String? operator_;
  @override
  final String? railway;
  @override
  final String? position;
  @override
  final String? wikidata;
  @override
  final String? wikimediaCommons;
  @override
  final String? image;
  @override
  final String? mapillary;
  @override
  final String? wikipedia;
  @override
  final String? note;
  @override
  final String? description;

  factory _$SearchMilestones200ResponseInner(
          [void Function(SearchMilestones200ResponseInnerBuilder)? updates]) =>
      (SearchMilestones200ResponseInnerBuilder()..update(updates))._build();

  _$SearchMilestones200ResponseInner._(
      {this.latitude,
      this.longitude,
      this.osmId,
      this.lineRef,
      this.milestoneRef,
      this.operator_,
      this.railway,
      this.position,
      this.wikidata,
      this.wikimediaCommons,
      this.image,
      this.mapillary,
      this.wikipedia,
      this.note,
      this.description})
      : super._();
  @override
  SearchMilestones200ResponseInner rebuild(
          void Function(SearchMilestones200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMilestones200ResponseInnerBuilder toBuilder() =>
      SearchMilestones200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMilestones200ResponseInner &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        osmId == other.osmId &&
        lineRef == other.lineRef &&
        milestoneRef == other.milestoneRef &&
        operator_ == other.operator_ &&
        railway == other.railway &&
        position == other.position &&
        wikidata == other.wikidata &&
        wikimediaCommons == other.wikimediaCommons &&
        image == other.image &&
        mapillary == other.mapillary &&
        wikipedia == other.wikipedia &&
        note == other.note &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, osmId.hashCode);
    _$hash = $jc(_$hash, lineRef.hashCode);
    _$hash = $jc(_$hash, milestoneRef.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, railway.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, wikidata.hashCode);
    _$hash = $jc(_$hash, wikimediaCommons.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, mapillary.hashCode);
    _$hash = $jc(_$hash, wikipedia.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchMilestones200ResponseInner')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('osmId', osmId)
          ..add('lineRef', lineRef)
          ..add('milestoneRef', milestoneRef)
          ..add('operator_', operator_)
          ..add('railway', railway)
          ..add('position', position)
          ..add('wikidata', wikidata)
          ..add('wikimediaCommons', wikimediaCommons)
          ..add('image', image)
          ..add('mapillary', mapillary)
          ..add('wikipedia', wikipedia)
          ..add('note', note)
          ..add('description', description))
        .toString();
  }
}

class SearchMilestones200ResponseInnerBuilder
    implements
        Builder<SearchMilestones200ResponseInner,
            SearchMilestones200ResponseInnerBuilder> {
  _$SearchMilestones200ResponseInner? _$v;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  int? _osmId;
  int? get osmId => _$this._osmId;
  set osmId(int? osmId) => _$this._osmId = osmId;

  String? _lineRef;
  String? get lineRef => _$this._lineRef;
  set lineRef(String? lineRef) => _$this._lineRef = lineRef;

  String? _milestoneRef;
  String? get milestoneRef => _$this._milestoneRef;
  set milestoneRef(String? milestoneRef) => _$this._milestoneRef = milestoneRef;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(String? operator_) => _$this._operator_ = operator_;

  String? _railway;
  String? get railway => _$this._railway;
  set railway(String? railway) => _$this._railway = railway;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _wikidata;
  String? get wikidata => _$this._wikidata;
  set wikidata(String? wikidata) => _$this._wikidata = wikidata;

  String? _wikimediaCommons;
  String? get wikimediaCommons => _$this._wikimediaCommons;
  set wikimediaCommons(String? wikimediaCommons) =>
      _$this._wikimediaCommons = wikimediaCommons;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _mapillary;
  String? get mapillary => _$this._mapillary;
  set mapillary(String? mapillary) => _$this._mapillary = mapillary;

  String? _wikipedia;
  String? get wikipedia => _$this._wikipedia;
  set wikipedia(String? wikipedia) => _$this._wikipedia = wikipedia;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SearchMilestones200ResponseInnerBuilder() {
    SearchMilestones200ResponseInner._defaults(this);
  }

  SearchMilestones200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _osmId = $v.osmId;
      _lineRef = $v.lineRef;
      _milestoneRef = $v.milestoneRef;
      _operator_ = $v.operator_;
      _railway = $v.railway;
      _position = $v.position;
      _wikidata = $v.wikidata;
      _wikimediaCommons = $v.wikimediaCommons;
      _image = $v.image;
      _mapillary = $v.mapillary;
      _wikipedia = $v.wikipedia;
      _note = $v.note;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMilestones200ResponseInner other) {
    _$v = other as _$SearchMilestones200ResponseInner;
  }

  @override
  void update(void Function(SearchMilestones200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchMilestones200ResponseInner build() => _build();

  _$SearchMilestones200ResponseInner _build() {
    final _$result = _$v ??
        _$SearchMilestones200ResponseInner._(
          latitude: latitude,
          longitude: longitude,
          osmId: osmId,
          lineRef: lineRef,
          milestoneRef: milestoneRef,
          operator_: operator_,
          railway: railway,
          position: position,
          wikidata: wikidata,
          wikimediaCommons: wikimediaCommons,
          image: image,
          mapillary: mapillary,
          wikipedia: wikipedia,
          note: note,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
