// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapViewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapViewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MapViewState()';
}


}

/// @nodoc
class $MapViewStateCopyWith<$Res>  {
$MapViewStateCopyWith(MapViewState _, $Res Function(MapViewState) __);
}


/// Adds pattern-matching-related methods to [MapViewState].
extension MapViewStatePatterns on MapViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MapViewStateLoading value)?  loading,TResult Function( MapViewStateReady value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapViewStateLoading() when loading != null:
return loading(_that);case MapViewStateReady() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MapViewStateLoading value)  loading,required TResult Function( MapViewStateReady value)  ready,}){
final _that = this;
switch (_that) {
case _MapViewStateLoading():
return loading(_that);case MapViewStateReady():
return ready(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MapViewStateLoading value)?  loading,TResult? Function( MapViewStateReady value)?  ready,}){
final _that = this;
switch (_that) {
case _MapViewStateLoading() when loading != null:
return loading(_that);case MapViewStateReady() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Map<MapStyle, ThemedMapSource> availableStyles,  MapStyle selectedStyle,  CameraPosition initialCameraPosition,  ThemedMapSource backgroundMapSource)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapViewStateLoading() when loading != null:
return loading();case MapViewStateReady() when ready != null:
return ready(_that.availableStyles,_that.selectedStyle,_that.initialCameraPosition,_that.backgroundMapSource);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Map<MapStyle, ThemedMapSource> availableStyles,  MapStyle selectedStyle,  CameraPosition initialCameraPosition,  ThemedMapSource backgroundMapSource)  ready,}) {final _that = this;
switch (_that) {
case _MapViewStateLoading():
return loading();case MapViewStateReady():
return ready(_that.availableStyles,_that.selectedStyle,_that.initialCameraPosition,_that.backgroundMapSource);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Map<MapStyle, ThemedMapSource> availableStyles,  MapStyle selectedStyle,  CameraPosition initialCameraPosition,  ThemedMapSource backgroundMapSource)?  ready,}) {final _that = this;
switch (_that) {
case _MapViewStateLoading() when loading != null:
return loading();case MapViewStateReady() when ready != null:
return ready(_that.availableStyles,_that.selectedStyle,_that.initialCameraPosition,_that.backgroundMapSource);case _:
  return null;

}
}

}

/// @nodoc


class _MapViewStateLoading implements MapViewState {
  const _MapViewStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapViewStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MapViewState.loading()';
}


}




/// @nodoc


class MapViewStateReady implements MapViewState {
  const MapViewStateReady({required final  Map<MapStyle, ThemedMapSource> availableStyles, required this.selectedStyle, required this.initialCameraPosition, this.backgroundMapSource = const ThemedMapSource(dark: "https://tiles.openfreemap.org/styles/dark", light: "https://tiles.openfreemap.org/styles/positron")}): _availableStyles = availableStyles;
  

 final  Map<MapStyle, ThemedMapSource> _availableStyles;
 Map<MapStyle, ThemedMapSource> get availableStyles {
  if (_availableStyles is EqualUnmodifiableMapView) return _availableStyles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_availableStyles);
}

 final  MapStyle selectedStyle;
 final  CameraPosition initialCameraPosition;
@JsonKey() final  ThemedMapSource backgroundMapSource;

/// Create a copy of MapViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapViewStateReadyCopyWith<MapViewStateReady> get copyWith => _$MapViewStateReadyCopyWithImpl<MapViewStateReady>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapViewStateReady&&const DeepCollectionEquality().equals(other._availableStyles, _availableStyles)&&(identical(other.selectedStyle, selectedStyle) || other.selectedStyle == selectedStyle)&&(identical(other.initialCameraPosition, initialCameraPosition) || other.initialCameraPosition == initialCameraPosition)&&(identical(other.backgroundMapSource, backgroundMapSource) || other.backgroundMapSource == backgroundMapSource));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_availableStyles),selectedStyle,initialCameraPosition,backgroundMapSource);

@override
String toString() {
  return 'MapViewState.ready(availableStyles: $availableStyles, selectedStyle: $selectedStyle, initialCameraPosition: $initialCameraPosition, backgroundMapSource: $backgroundMapSource)';
}


}

/// @nodoc
abstract mixin class $MapViewStateReadyCopyWith<$Res> implements $MapViewStateCopyWith<$Res> {
  factory $MapViewStateReadyCopyWith(MapViewStateReady value, $Res Function(MapViewStateReady) _then) = _$MapViewStateReadyCopyWithImpl;
@useResult
$Res call({
 Map<MapStyle, ThemedMapSource> availableStyles, MapStyle selectedStyle, CameraPosition initialCameraPosition, ThemedMapSource backgroundMapSource
});


$ThemedMapSourceCopyWith<$Res> get backgroundMapSource;

}
/// @nodoc
class _$MapViewStateReadyCopyWithImpl<$Res>
    implements $MapViewStateReadyCopyWith<$Res> {
  _$MapViewStateReadyCopyWithImpl(this._self, this._then);

  final MapViewStateReady _self;
  final $Res Function(MapViewStateReady) _then;

/// Create a copy of MapViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? availableStyles = null,Object? selectedStyle = null,Object? initialCameraPosition = null,Object? backgroundMapSource = null,}) {
  return _then(MapViewStateReady(
availableStyles: null == availableStyles ? _self._availableStyles : availableStyles // ignore: cast_nullable_to_non_nullable
as Map<MapStyle, ThemedMapSource>,selectedStyle: null == selectedStyle ? _self.selectedStyle : selectedStyle // ignore: cast_nullable_to_non_nullable
as MapStyle,initialCameraPosition: null == initialCameraPosition ? _self.initialCameraPosition : initialCameraPosition // ignore: cast_nullable_to_non_nullable
as CameraPosition,backgroundMapSource: null == backgroundMapSource ? _self.backgroundMapSource : backgroundMapSource // ignore: cast_nullable_to_non_nullable
as ThemedMapSource,
  ));
}

/// Create a copy of MapViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThemedMapSourceCopyWith<$Res> get backgroundMapSource {
  
  return $ThemedMapSourceCopyWith<$Res>(_self.backgroundMapSource, (value) {
    return _then(_self.copyWith(backgroundMapSource: value));
  });
}
}

// dart format on
