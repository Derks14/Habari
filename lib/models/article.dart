
// Object denoting an article

import 'package:json_annotation/json_annotation.dart';
part 'article.g.dart';


@JsonSerializable()
class Article {
  final String id;
  final String url;
  final String title;
  final String text;
  final String publisher;
  final String author;
  final String image;
  final DateTime date;

  Article(this.id, this.url, this.title, this.text, this.publisher,this.author,this.image,
      this.date);

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}