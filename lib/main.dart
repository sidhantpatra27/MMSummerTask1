import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
            children: <Widget>[
        Home(),


      ],
              )
    );

  }
}


