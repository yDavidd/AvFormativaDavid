import 'package:flutter/material.dart';
import 'principal.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Principal());
  }
}
