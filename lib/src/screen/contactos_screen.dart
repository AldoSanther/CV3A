import 'package:flutter/material.dart';
import 'package:my_app_aldo_santos/src/models/persona.dart';

class ContactosScreen extends StatelessWidget {
  ContactosScreen({super.key});

  //Listas y mapas......
  final List<Persona> persona = [
    Persona(foto: ' ', nombre: 'Aldo'),
    Persona(foto: ' ', nombre: 'Pedro'),
    Persona(foto: ' ', nombre: 'Arnold'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Contactos")),
      body: ListView.builder(
        itemCount: persona.length,
        itemBuilder: (context, index) {
          return ListTile(
            //Para ingresar una imagen desde la red
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRux_FiQs6Wv30gCkV3nS_Bl1nmM3sdFBNwCA&usqp=CAU'),
            ),
            //
            title: Text(persona[index].nombre),
            subtitle: const Text('Apellidos'),
            //titlecolor: Colors.green,  // Ingresar color a la list de contactos
            trailing: const Icon(Icons.arrow_right), //Colocar icono de fleca
          );
          //return Text(contactos[index].nombre);
        },
      ),
    );
  }
}
