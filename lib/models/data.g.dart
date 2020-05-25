// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    count: json['count'] as int,
    urls: json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    articles: (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'count': instance.count,
      'urls': instance.urls?.toJson(),
      'articles': instance.articles?.map((e) => e?.toJson())?.toList(),
    };
