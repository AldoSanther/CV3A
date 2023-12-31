import 'dart:math';

import 'package:flutter/material.dart';

class EjemploFuture extends StatefulWidget {
  const EjemploFuture({super.key});

  @override
  State<EjemploFuture> createState() => _EjemploFutureState();
}

class _EjemploFutureState extends State<EjemploFuture> {
  //Para indicar que va a llegar un valor
  late Future<int> numero;
  @override
  void initState() {
    super.initState();
  }

  Future<int> obtenerNumero() {
    return Future.delayed(const Duration(seconds: 4), () {
      return Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Tienen que se witget especial
        child: FutureBuilder(
          future: obtenerNumero(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return const Text("Error");
                } else if (snapshot.hasData) {
                  int data = snapshot.data!;
                  return Text(
                    data.toString(),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 23, 155, 12), fontSize: 50),
                  );
                } else {
                  return const Text('No hay datos');
                }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => obtenerNumero(),
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

//importm
//statefelw