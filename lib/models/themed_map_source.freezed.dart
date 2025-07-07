// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'themed_map_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemedMapSource {

 String get dark; String get light;
/// Create a copy of ThemedMapSource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemedMapSourceCopyWith<ThemedMapSource> get copyWith => _$ThemedMapSourceCopyWithImpl<ThemedMapSource>(this as ThemedMapSource, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemedMapSource&&(identical(other.dark, dark) || other.dark == dark)&&(identical(other.light, light) || other.light == light));
}


@override
int get hashCode => Object.hash(runtimeType,dark,light);

@override
String toString() {
  return 'ThemedMapSource(dark: $dark, light: $light)';
}


}

/// @nodoc
abstract mixin class $ThemedMapSourceCopyWith<$Res>  {
  factory $ThemedMapSourceCopyWith(ThemedMapSource value, $Res Function(ThemedMapSource) _then) = _$ThemedMapSourceCopyWithImpl;
@useResult
$Res call({
 String dark, String light
});




}
/// @nodoc
class _$ThemedMapSourceCopyWithImpl<$Res>
    implements $ThemedMapSourceCopyWith<$Res> {
  _$ThemedMapSourceCopyWithImpl(this._self, this._then);

  final ThemedMapSource _self;
  final $Res Function(ThemedMapSource) _then;

/// Create a copy of ThemedMapSource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dark = null,Object? light = null,}) {
  return _then(_self.copyWith(
dark: null == dark ? _self.dark : dark // ignore: cast_nullable_to_non_nullable
as String,light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemedMapSource].
extension ThemedMapSourcePatterns on ThemedMapSource {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemedMapSource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemedMapSource() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemedMapSource value)  $default,){
final _that = this;
switch (_that) {
case _ThemedMapSource():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemedMapSource value)?  $default,){
final _that = this;
switch (_that) {
case _ThemedMapSource() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dark,  String light)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemedMapSource() when $default != null:
return $default(_that.dark,_that.light);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dark,  String light)  $default,) {final _that = this;
switch (_that) {
case _ThemedMapSource():
return $default(_that.dark,_that.light);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dark,  String light)?  $default,) {final _that = this;
switch (_that) {
case _ThemedMapSource() when $default != null:
return $default(_that.dark,_that.light);case _:
  return null;

}
}

}

/// @nodoc


class _ThemedMapSource extends ThemedMapSource {
  const _ThemedMapSource({required this.dark, required this.light}): super._();
  

@override final  String dark;
@override final  String light;

/// Create a copy of ThemedMapSource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemedMapSourceCopyWith<_ThemedMapSource> get copyWith => __$ThemedMapSourceCopyWithImpl<_ThemedMapSource>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemedMapSource&&(identical(other.dark, dark) || other.dark == dark)&&(identical(other.light, light) || other.light == light));
}


@override
int get hashCode => Object.hash(runtimeType,dark,light);

@override
String toString() {
  return 'ThemedMapSource(dark: $dark, light: $light)';
}


}

/// @nodoc
abstract mixin class _$ThemedMapSourceCopyWith<$Res> implements $ThemedMapSourceCopyWith<$Res> {
  factory _$ThemedMapSourceCopyWith(_ThemedMapSource value, $Res Function(_ThemedMapSource) _then) = __$ThemedMapSourceCopyWithImpl;
@override @useResult
$Res call({
 String dark, String light
});




}
/// @nodoc
class __$ThemedMapSourceCopyWithImpl<$Res>
    implements _$ThemedMapSourceCopyWith<$Res> {
  __$ThemedMapSourceCopyWithImpl(this._self, this._then);

  final _ThemedMapSource _self;
  final $Res Function(_ThemedMapSource) _then;

/// Create a copy of ThemedMapSource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dark = null,Object? light = null,}) {
  return _then(_ThemedMapSource(
dark: null == dark ? _self.dark : dark // ignore: cast_nullable_to_non_nullable
as String,light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
