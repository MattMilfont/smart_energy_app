import 'package:dio/dio.dart';
import 'package:smart_energy_app/src/core/data/service/dio_api_interceptor_impl.dart';
import 'package:smart_energy_app/src/core/interactor/service/api_service.dart';

class ApiServiceImpl implements ApiService<Response> {
  late Dio? dio;

  ApiServiceImpl() {
    final dioInstance = Dio();
    dioInstance.interceptors.add(DioApiInterceptorImpl().interceptor);
    dio = dioInstance;
  }

  @override
  Future<Response> delete(
    String url, {
    Map<String, dynamic>? queryParam,
  }) async =>
      dio!.delete(url, queryParameters: queryParam);

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParam,
  }) async =>
      dio!.get(url, queryParameters: queryParam);

  @override
  Future<Response> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParam,
  }) async =>
      dio!.post(url, queryParameters: queryParam, data: body);

  @override
  Future<Response> put(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParam,
  }) =>
      dio!.put(url, queryParameters: queryParam, data: body);
}
