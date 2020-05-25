import 'package:flutter/material.dart';
import 'package:habari/constants.dart';
import 'package:habari/screens/detail.dart';
import 'package:habari/screens/news.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QodeHub Application',
      onGenerateRoute: _routes(),
    );
  }


//  This function handles routing of the app
  RouteFactory _routes(){
    return (settings){

      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch(settings.name) {
        case NewsRoute:
          screen = News();
          break;
        case DetailRoute:
          screen = Detail(arguments['article']);
          break;
        default:
          return null;
      }

      return MaterialPageRoute(
          builder: (BuildContext context) => screen);
    };
  }
}

