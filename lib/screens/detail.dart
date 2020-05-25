import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habari/models/article.dart';
import 'package:habari/widgets/imageBanner.dart';
import 'package:habari/widgets/textSection.dart';

class Detail extends StatelessWidget {
  final Article article;
  
  Detail(this.article);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CupertinoNavigationBar(middle: Text(article.title, style: TextStyle(fontSize: 20),),),
              ImageBanner(article.image),
              TextSection(article),
            ],
          ),
        ),
      ),
    );
  }
}

//