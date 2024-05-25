// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerPage _$PerPageFromJson(Map<String, dynamic> json) => PerPage(
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: (json['total_results'] as num?)?.toInt(),
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$PerPageToJson(PerPage instance) => <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'photos': instance.photos,
      'total_results': instance.totalResults,
      'next_page': instance.nextPage,
    };
