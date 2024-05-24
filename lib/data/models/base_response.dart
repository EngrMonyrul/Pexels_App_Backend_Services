import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  bool? success;
  T? payload;
  int? statusCode;
  String? statusMessage;

  BaseResponse(
      {this.success, this.payload, this.statusCode, this.statusMessage});

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
    if (payload != null && statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
