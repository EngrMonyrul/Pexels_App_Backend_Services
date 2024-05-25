import 'package:json_annotation/json_annotation.dart';
import 'package:pexels_services/data/models/photos/src.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "height")
  int? height;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "photographer")
  String? photographer;
  @JsonKey(name: "photographer_url")
  String? photographerUrl;
  @JsonKey(name: "photographer_id")
  int? photographerId;
  @JsonKey(name: "avg_color")
  String? avgColor;
  @JsonKey(name: "src")
  Src? src;
  @JsonKey(name: "liked")
  bool? liked;
  @JsonKey(name: "alt")
  String? alt;

  Photo({
    this.id,
    this.width,
    this.height,
    this.url,
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    this.avgColor,
    this.src,
    this.liked,
    this.alt,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}