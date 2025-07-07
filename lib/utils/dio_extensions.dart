import 'package:dio/dio.dart';

extension IsSuccessful on Response {
  bool get isSuccessful => (statusCode ?? 500) ~/ 100 == 2;
}
