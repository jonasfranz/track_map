import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class TrackMapModule {
  Dio get dio => Dio();
}
