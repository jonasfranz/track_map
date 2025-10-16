// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ice_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ICEStatus _$ICEStatusFromJson(Map<String, dynamic> json) => _ICEStatus(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  speed: (json['speed'] as num).toDouble(),
);

Map<String, dynamic> _$ICEStatusToJson(_ICEStatus instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'speed': instance.speed,
    };
