import 'package:flutter/material.dart';
import 'package:habari/models/data.dart';
import 'package:habari/widgets/newsItem.dart';



class NewsList extends StatelessWidget {
  final Data newsData;

  NewsList({Key key, this.newsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: ListView.builder(
          itemCount: newsData.count,
          itemBuilder: (context, index) => NewsItem(
            article: newsData.articles[index],
          ),
//          separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

