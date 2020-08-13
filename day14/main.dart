import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var db = ["prakhar", "steve", "stephen"];
  var index = 0;

  lwclick() {
    setState(() {
      index += 1;
    });

    print('clicked...');
    print('index changed to index number = ${index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check State'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.height * 0.4,
        height: MediaQuery.of(context).size.height * 0.4,
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Text(db[index % db.length]),
            FlatButton(
              onPressed: lwclick,
              child: Text('click here'),
            ),
            //   Text('second'),
            Text('third'),
          ],
        ),
      ),
    );
  }
}
