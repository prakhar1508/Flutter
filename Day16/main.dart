import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

/*
myweb() async {
  var url = "http://192.168.1.106/cgi-bin/web1.py?x=date";
  var response = await http.get(url);
  var data = response.body;
  print(data);
}
*/

myweb() async {
  //var url = "http://192.168.1.106/cgi-bin/web1.py?x=date";
  var url =
      "http://api.openweathermap.org/data/2.5/forecast?q=jaipur&appid=c5970ae81a52336063fd1eca1ed6ce31";
  var response = await http.get(url);
  var data = response.body;
  var fdata = jsonDecode(data);
  print(fdata['list'][0]['weather'][0]['main']);
  // print(fdata['output']);
  //print(fdata.runtimeType);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.yellow[900],
        ),
        body: Center(
          child: FlatButton(
            onPressed: myweb,
            child: Text(
              'click here',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
