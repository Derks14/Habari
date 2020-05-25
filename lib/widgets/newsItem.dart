import 'package:flutter/material.dart';
import 'package:habari/constants.dart';
import 'package:habari/models/article.dart';

class NewsItem extends StatefulWidget {
  final Article article;

  NewsItem({Key key, this.article});

  @override
  _NewsItemState createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {

  Color itemColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
      padding: EdgeInsets.only(left: 2),
      child: ListTile(
        title: Container(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(widget.article.title,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        subtitle: Container(
          child: Text(widget.article.publisher),
        ),

        trailing: Icon(Icons.arrow_forward_ios, size: 14,),
        onTap: () => _onNewsTap(context,widget.article),
      )
    );
  }

  void _onNewsTap(BuildContext context, Article article){
    Navigator.pushNamed(context, DetailRoute, arguments: {'article': article});
    setState(() {
      itemColor = Color.fromRGBO(241, 243, 244,1);
    });

}
}
