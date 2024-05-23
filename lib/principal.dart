import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App de Maps"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.orangeAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, 180, 0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding (
                    padding: const EdgeInsets.only(top:20, bottom: 20),
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                          child: const Text("Mapa 1"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Tela1()),
                            );
                          }),

                    ),
                  ),
                  Padding (
                      padding: const EdgeInsets.only(top:20, bottom: 20),
                      child: SizedBox(
                        height: 60,
                        width: 80,
                        child: ElevatedButton(
                            child: const Text("Mapa 2"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Tela2()),
                              );
                            }),

                      ),
                  ),
                  Padding (
                      padding: const EdgeInsets.only(top:20, bottom: 20),
                      child: SizedBox(
                        height: 60,
                        width: 80,
                        child: ElevatedButton(
                            child: const Text("Mapa 3"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Tela3()),
                              );
                            }),
                      ),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}