import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switchValue=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _switchValue?Colors.blueAccent:Colors.white12,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Changed Theme',style: TextStyle(fontSize: 35,color: Colors.white),),
              Switch(value: _switchValue, onChanged: (newValue){
                setState(() {
                  _switchValue=newValue;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
