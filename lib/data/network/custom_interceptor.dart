part of '../../pexels_services.dart';

class CustomInterceptors implements InterceptorsWrapper {
  CustomInterceptors({required String apiKey}) : _apiKey = apiKey;
  final String _apiKey;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    log("Request--------->\n${err.response?.realUri.path}\nError--------->\n${err.error}");
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    if (_apiKey != "") {
      options.headers.addAll({
        'Authorization': _apiKey,
      });
    }

    if (options.method != "GET") {
      options.headers.addAll({
        'Content-Type': 'application/json',
      });
    }

    final data = options.data ?? {};
    log("Request-------->\n${options.baseUrl}${options.path}\nRequest Data------------>\n${jsonEncode(data)}");
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    final data = response.data as Map;
    response.data = data;
    log("Request--------->\n${response.realUri.path}\nResponse-------->\n${jsonEncode(response.data)}");
    return handler.next(response);
  }
}
