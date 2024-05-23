import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Tela3 extends StatefulWidget{
  const Tela3({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Tela3>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 3 DAVID'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.greenAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-33.814175641873454, 151.0074452280542), zoom:3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=818bc6b3e73542dd9628b909241c073a',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 100.0,
                    height: 100.0,
                    point: LatLng(-33.814175641873454, 151.0074452280542),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.greenAccent),
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