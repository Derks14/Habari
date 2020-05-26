import 'package:flutter/material.dart';
import 'package:habari/models/article.dart';

class TextSection extends StatelessWidget {
  final Article article;

//  Constructor to pass
  TextSection(this.article);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(article.title,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(article.publisher, style: TextStyle(color: Colors.grey),),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(article.text),
          )
        ],
      ),

    );
  }
}