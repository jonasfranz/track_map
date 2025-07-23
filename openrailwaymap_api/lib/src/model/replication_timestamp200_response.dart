//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'replication_timestamp200_response.g.dart';

/// ReplicationTimestamp200Response
///
/// Properties:
/// * [replicationTimestamp] 
@BuiltValue()
abstract class ReplicationTimestamp200Response implements Built<ReplicationTimestamp200Response, ReplicationTimestamp200ResponseBuilder> {
  @BuiltValueField(wireName: r'replication_timestamp')
  String? get replicationTimestamp;

  ReplicationTimestamp200Response._();

  factory ReplicationTimestamp200Response([void updates(ReplicationTimestamp200ResponseBuilder b)]) = _$ReplicationTimestamp200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReplicationTimestamp200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReplicationTimestamp200Response> get serializer => _$ReplicationTimestamp200ResponseSerializer();
}

class _$ReplicationTimestamp200ResponseSerializer implements PrimitiveSerializer<ReplicationTimestamp200Response> {
  @override
  final Iterable<Type> types = const [ReplicationTimestamp200Response, _$ReplicationTimestamp200Response];

  @override
  final String wireName = r'ReplicationTimestamp200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReplicationTimestamp200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.replicationTimestamp != null) {
      yield r'replication_timestamp';
      yield serializers.serialize(
        object.replicationTimestamp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReplicationTimestamp200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReplicationTimestamp200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'replication_timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.replicationTimestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReplicationTimestamp200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicationTimestamp200ResponseBuilder();
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

