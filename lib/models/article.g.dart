// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article(
    json['id'] as String,
    json['url'] as String,
    json['title'] as String,
    json['text'] as String,
    json['publisher'] as String,
    json['author'] as String,
    json['image'] as String,
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'text': instance.text,
      'publisher': instance.publisher,
      'author': instance.author,
      'image': instance.image,
      'date': instance.date?.toIso8601String(),
    };
