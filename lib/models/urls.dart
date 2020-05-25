import 'package:json_annotation/json_annotation.dart';
part 'urls.g.dart';

// Urls

@JsonSerializable()
class Urls{
  String self;
  String next;
  String prev;

  Urls(this.self, this.next, this.prev);

  factory Urls.fromJson(Map<String,dynamic> json) => _$UrlsFromJson(json);
  Map<String, dynamic> toJson() => _$UrlsToJson(this);
}