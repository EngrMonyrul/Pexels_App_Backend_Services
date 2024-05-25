import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  bool? success;
  T? payload;

  BaseResponse({this.success, this.payload});

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      BaseResponse(
        payload: _createPayload(json, fromJsonT),
      );

  static T? _createPayload<T>(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    if (json.isNotEmpty) {
      return fromJsonT(json);
    } else {
      return null;
    }
  }

  bool get getResponseType {
    if (payload != null) {
      return true;
    } else {
      return false;
    }
  }
}
