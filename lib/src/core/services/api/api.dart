abstract class ApiService<T> {
  Future<T> get(
    String url, {
    Map<String, dynamic>? queryParam,
  });

  Future<T> post(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParam,
  });
  Future<T> put(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParam,
  });
  Future<T> delete(
    String url, {
    Map<String, dynamic>? queryParam,
  });
}
