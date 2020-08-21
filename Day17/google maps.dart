import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MyGoogleMap(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyGoogleMap extends StatefulWidget {
  @override
  _MyGoogleMapState createState() => _MyGoogleMapState();
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  @override
  Widget build(BuildContext context) {
    var campos = CameraPosition(
      target: LatLng(26.853478, 75.806158),
      zoom: 12,
    );
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text(
          'Google Maps',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: campos,
        mapType: MapType.terrain,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('My Body'),
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
