import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
  }

  Future<Response?> getData({
    required String url,
    required Map<String, dynamic> qurey,
  }) async {
    return await dio?.get(url, queryParameters: qurey);
  }
}
