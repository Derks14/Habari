
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habari/models/data.dart';
import 'package:habari/widgets/newsList.dart';

class News extends StatefulWidget {
  News({Key key}): super(key: key);
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  Future<Data> futureData;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Text('News', style: TextStyle(fontSize: 40),)
      ),
      body: Center(
        child: FutureBuilder(
            future: futureData,
            builder: (context, snapshot){

              if(snapshot.hasError) return CupertinoAlertDialog(title: Text('Error'), content: Text("${snapshot.error}"),);
              return snapshot.hasData ? NewsList(newsData: snapshot.data,) : CupertinoActivityIndicator(radius: 16,);
              },
        )
      )
    );
  }

  @override
  void initState() {
    futureData = fetchData();
  }


}

