import 'package:dio/dio.dart';

const String BASE_URL = "http://madalali.local:8888";

class MadalaliApi {
  static BaseOptions _baseOptions = new BaseOptions(baseUrl: BASE_URL);

  // For unauthenticated apis
  static Dio dio = new Dio(_baseOptions);

  // Autheticated routes
  static Dio dioAuth() {
    return Dio();
  }
}
