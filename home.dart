import 'package:flutter/material.dart';

myapp() {
  var MyText = Text(
    'Shimla Diaries',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  mypressforemail() {
    print("clicked for email...");
  }

  mypressforclock() {
    print("clicked for alarm clock...");
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.black,
  );
  var MyClockIcon = Icon(
    Icons.access_alarm,
    color: Colors.black,
  );

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypressforemail);
  var MyClockButton = IconButton(icon: MyClockIcon, onPressed: mypressforclock);

  var url = 'https://github.com/prakhar1508/flutter/raw/master/pmb.jpg';
  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myappbar = AppBar(
    title: MyText,
    backgroundColor: Colors.lightBlue,
    brightness: Brightness.light,
    leading: MyImage,
    actions: <Widget>[
      MyEmailButton,
      MyClockButton,
      //  MyBackButton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
