part of '../../pexels_services.dart';

class ErrorHandling {
  static error<T>(Object? error, StackTrace? stackTrace) {
    log("Error----->\n$error");
    log("StackTrace-------->\n$stackTrace");
  }
}
