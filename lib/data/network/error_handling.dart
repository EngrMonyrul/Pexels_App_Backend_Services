part of '../../pexels_services.dart';

class ErrorHandling {
  static BaseResponse<T> error<T>(Object? error, StackTrace? stackTrace) {
    log("Error----->\n$error");
    log("StackTrace-------->\n$stackTrace");

    switch (error.runtimeType) {
      case DioException _:
        return BaseResponse(success: false);
      default:
        return BaseResponse(success: false);
    }
  }
}
