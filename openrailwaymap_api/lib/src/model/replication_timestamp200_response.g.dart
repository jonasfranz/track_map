// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replication_timestamp200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationTimestamp200Response
    extends ReplicationTimestamp200Response {
  @override
  final String? replicationTimestamp;

  factory _$ReplicationTimestamp200Response(
          [void Function(ReplicationTimestamp200ResponseBuilder)? updates]) =>
      (ReplicationTimestamp200ResponseBuilder()..update(updates))._build();

  _$ReplicationTimestamp200Response._({this.replicationTimestamp}) : super._();
  @override
  ReplicationTimestamp200Response rebuild(
          void Function(ReplicationTimestamp200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationTimestamp200ResponseBuilder toBuilder() =>
      ReplicationTimestamp200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationTimestamp200Response &&
        replicationTimestamp == other.replicationTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, replicationTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReplicationTimestamp200Response')
          ..add('replicationTimestamp', replicationTimestamp))
        .toString();
  }
}

class ReplicationTimestamp200ResponseBuilder
    implements
        Builder<ReplicationTimestamp200Response,
            ReplicationTimestamp200ResponseBuilder> {
  _$ReplicationTimestamp200Response? _$v;

  String? _replicationTimestamp;
  String? get replicationTimestamp => _$this._replicationTimestamp;
  set replicationTimestamp(String? replicationTimestamp) =>
      _$this._replicationTimestamp = replicationTimestamp;

  ReplicationTimestamp200ResponseBuilder() {
    ReplicationTimestamp200Response._defaults(this);
  }

  ReplicationTimestamp200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replicationTimestamp = $v.replicationTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationTimestamp200Response other) {
    _$v = other as _$ReplicationTimestamp200Response;
  }

  @override
  void update(void Function(ReplicationTimestamp200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationTimestamp200Response build() => _build();

  _$ReplicationTimestamp200Response _build() {
    final _$result = _$v ??
        _$ReplicationTimestamp200Response._(
          replicationTimestamp: replicationTimestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
