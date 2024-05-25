import 'package:json_annotation/json_annotation.dart';
import 'package:pexels_services/data/models/photos/photo.dart';

part 'per_page.g.dart';

@JsonSerializable()
class PerPage {
  @JsonKey(name: "page")
  int? page;
  @JsonKey(name: "per_page")
  int? perPage;
  @JsonKey(name: "photos")
  List<Photo>? photos;
  @JsonKey(name: "total_results")
  int? totalResults;
  @JsonKey(name: "next_page")
  String? nextPage;

  PerPage({
    this.page,
    this.perPage,
    this.photos,
    this.totalResults,
    this.nextPage,
  });

  factory PerPage.fromJson(Map<String, dynamic> json) => _$PerPageFromJson(json);

  Map<String, dynamic> toJson() => _$PerPageToJson(this);
}