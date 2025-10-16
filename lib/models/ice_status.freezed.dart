// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ice_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ICEStatus {

 double get latitude; double get longitude; double get speed;
/// Create a copy of ICEStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ICEStatusCopyWith<ICEStatus> get copyWith => _$ICEStatusCopyWithImpl<ICEStatus>(this as ICEStatus, _$identity);

  /// Serializes this ICEStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ICEStatus&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,speed);

@override
String toString() {
  return 'ICEStatus(latitude: $latitude, longitude: $longitude, speed: $speed)';
}


}

/// @nodoc
abstract mixin class $ICEStatusCopyWith<$Res>  {
  factory $ICEStatusCopyWith(ICEStatus value, $Res Function(ICEStatus) _then) = _$ICEStatusCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, double speed
});




}
/// @nodoc
class _$ICEStatusCopyWithImpl<$Res>
    implements $ICEStatusCopyWith<$Res> {
  _$ICEStatusCopyWithImpl(this._self, this._then);

  final ICEStatus _self;
  final $Res Function(ICEStatus) _then;

/// Create a copy of ICEStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? speed = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ICEStatus].
extension ICEStatusPatterns on ICEStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ICEStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ICEStatus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ICEStatus value)  $default,){
final _that = this;
switch (_that) {
case _ICEStatus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ICEStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ICEStatus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double speed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ICEStatus() when $default != null:
return $default(_that.latitude,_that.longitude,_that.speed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double speed)  $default,) {final _that = this;
switch (_that) {
case _ICEStatus():
return $default(_that.latitude,_that.longitude,_that.speed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  double speed)?  $default,) {final _that = this;
switch (_that) {
case _ICEStatus() when $default != null:
return $default(_that.latitude,_that.longitude,_that.speed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ICEStatus implements ICEStatus {
  const _ICEStatus({required this.latitude, required this.longitude, required this.speed});
  factory _ICEStatus.fromJson(Map<String, dynamic> json) => _$ICEStatusFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  double speed;

/// Create a copy of ICEStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ICEStatusCopyWith<_ICEStatus> get copyWith => __$ICEStatusCopyWithImpl<_ICEStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ICEStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ICEStatus&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.speed, speed) || other.speed == speed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,speed);

@override
String toString() {
  return 'ICEStatus(latitude: $latitude, longitude: $longitude, speed: $speed)';
}


}

/// @nodoc
abstract mixin class _$ICEStatusCopyWith<$Res> implements $ICEStatusCopyWith<$Res> {
  factory _$ICEStatusCopyWith(_ICEStatus value, $Res Function(_ICEStatus) _then) = __$ICEStatusCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, double speed
});




}
/// @nodoc
class __$ICEStatusCopyWithImpl<$Res>
    implements _$ICEStatusCopyWith<$Res> {
  __$ICEStatusCopyWithImpl(this._self, this._then);

  final _ICEStatus _self;
  final $Res Function(_ICEStatus) _then;

/// Create a copy of ICEStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? speed = null,}) {
  return _then(_ICEStatus(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
