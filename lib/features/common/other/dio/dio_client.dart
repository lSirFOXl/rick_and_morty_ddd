import 'package:dio/dio.dart';
import 'package:rick_and_morty_ddd/features/common/other/dio/dio_interceptor.dart';

class DioClient {
  final _dio = Dio();

  DioClient() {
    _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio => _dio;
}
