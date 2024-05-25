import 'package:json_annotation/json_annotation.dart';

part 'src.g.dart';

@JsonSerializable()
class Src {
  @JsonKey(name: "original")
  String? original;
  @JsonKey(name: "large2x")
  String? large2X;
  @JsonKey(name: "large")
  String? large;
  @JsonKey(name: "medium")
  String? medium;
  @JsonKey(name: "small")
  String? small;
  @JsonKey(name: "portrait")
  String? portrait;
  @JsonKey(name: "landscape")
  String? landscape;
  @JsonKey(name: "tiny")
  String? tiny;

  Src({
    this.original,
    this.large2X,
    this.large,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);

  Map<String, dynamic> toJson() => _$SrcToJson(this);
}