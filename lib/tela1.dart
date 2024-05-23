import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Tela1 extends StatefulWidget{
  const Tela1({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Tela1>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 1 DAVID'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.pinkAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(48.86730100768199, 2.783646623508319), zoom:3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/pioneer/{z}/{x}/{y}.png?apikey=818bc6b3e73542dd9628b909241c073a',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 100.0,
                    height: 100.0,
                    point: LatLng(48.86730100768199, 2.783646623508319),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.pinkAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}