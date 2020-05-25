import 'dart:convert';

import 'package:habari/models/article.dart';
import 'package:habari/constants.dart';
import 'package:habari/models/urls.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';



@JsonSerializable(explicitToJson: true)
class Data{
  int count;
  Urls urls;
  List<Article> articles;

  Data({this.count, this.urls, this.articles});

//  Take json and format into Data object
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

Future<Data> fetchData() async {
  final response =
  await http.get(DataUrl);

  if(response.statusCode == 200){
//    parse json from server into a Data Object if status code is 200
  print(json.decode(response.body));
    return Data.fromJson(json.decode(response.body));
  }
  else {
    throw Exception('Failed to load News data');
  }
}