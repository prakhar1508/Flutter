import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var cmd;
  var webdata;

  myweb(cmd) async {
    var url = "http://192.168.1.104/cgi-bin/web1.py?x=${cmd}";
    var response = await http.get(url);
    setState(() {
      webdata = response.body;
    });
    // print(webdata);
  }

  /*
  var db = ["prakhar", "steve", "stephen"];
  var index = 0;

  lwclick() {
    setState(() {
      index += 1;
    });

    print('clicked...');
    print('index changed to index number = ${index}');
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Linux Terminal',
          style: TextStyle(
            color: Colors.blue[900],
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.orange[400],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.8,
          color: Colors.green,
          child: Column(
            children: <Widget>[
              Text(
                "Enter your linux command :",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                onChanged: (value) {
                  cmd = value;
                },
              ),
              FlatButton(
                onPressed: () {
                  myweb(cmd);
                },
                child: Text('click here'),
              ),
              Text(webdata ?? "output is coming .."),

              /*
              Text(db[index % db.length]),

              FlatButton(
                onPressed: lwclick,
                child: Text('click here'),
              ),
              //   Text('second'),
              Text('third'),
              */
            ],
          ),
        ),
      ),
    );
  }
}
