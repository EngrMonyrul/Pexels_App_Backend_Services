part of '../../pexels_services.dart';

enum ResponseType { success, error, timeout, connectionProblem, unauthorized }

extension ResponseTypeX on ResponseType {
  bool get isSuccess => this == ResponseType.success;

  bool get isError => this == ResponseType.error;

  bool get isTimeOut => this == ResponseType.timeout;

  bool get isConnectionProblem => this == ResponseType.connectionProblem;

  bool get isUnauthorized => this == ResponseType.unauthorized;
}
