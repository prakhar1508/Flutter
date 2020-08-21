import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

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
  var la1, lo1;
  //var la1 = 26.904957;
  //var lo1 = 75.807243;
  geo() async {
    var p = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    // print(p);
    la1 = p.latitude;
    lo1 = p.longitude;
    print(p);
  }

  @override
  Widget build(BuildContext context) {
    var campos = CameraPosition(
      // target: LatLng(26.853478, 75.806158),
      target: LatLng(la1 ?? 26.904957, lo1 ?? 75.807243),
      // target: LatLng(la1, lo1),
      zoom: 15,
      tilt: 50,
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
        mapType: MapType.hybrid,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: geo,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}

/*
func1() {
  print('hii');
}
splashColor: Colors.red,
*/
