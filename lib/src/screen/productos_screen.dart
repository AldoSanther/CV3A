import 'package:flutter/material.dart';
import 'package:my_app_aldo_santos/src/models/producto.dart';

//stles para crear Automaticamente el StatelessWidget
class ProductoScreen extends StatelessWidget {
  ProductoScreen({super.key});

  //Listas y mapas......
  final List<Producto> producto = [
    Producto(
        imagenURL:
            'https://m.media-amazon.com/images/I/61ak2mcBHsL._AC_SL1500_.jpg',
        producto: 'Audifonos',
        stock: 0),
    Producto(
        imagenURL:
            'https://m.media-amazon.com/images/I/511VO6MRUxL._AC_SX522_.jpg',
        producto: 'Reloj Digital',
        stock: 2),
    Producto(
        imagenURL:
            'https://m.media-amazon.com/images/I/61P7g5q8XkL.__AC_SX300_SY300_QL70_ML2_.jpg',
        producto: 'Bocina JBL',
        stock: 25),
    Producto(
        imagenURL:
            'https://m.media-amazon.com/images/I/61Rr8uxmREL._AC_SX425_.jpg',
        producto: 'Alexa',
        stock: 45),
    Producto(
        imagenURL:
            'https://m.media-amazon.com/images/I/51DbC3s4zsL._AC_SX425_.jpg',
        producto: 'Pantalla',
        stock: 0),
  ];

  @override
  Widget build(BuildContext context) {
    Color colorProducto = Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Productos"),
      ),
      //backgroundColor: Colors.amber,
      body: ListView.builder(
        itemCount: producto.length,
        itemBuilder: (
          context,
          index,
        ) {
          if (producto[index].stock.toInt() == 0) {
            colorProducto = Colors.red;
          } else {
            colorProducto = Colors.white;
          }
          return ListTile(
            tileColor: colorProducto,
            //Para ingresar una imagen desde la red
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(producto[index].imagenURL.toString()),
            ),
            //

            title: Text(
              producto[index].producto,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.blue,

                // backgroundColor: Colors.amber,
              ),
            ),

            //  subtitle: const Text(producto[index].stock),
            subtitle: Text(
              producto[index].stock.toString(),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            //titlecolor: Colors.green,  // Ingresar color a la list de contactos
            trailing: const Icon(Icons.arrow_right), //Colocar icono de fleca
          );

          //return Text(contactos[index].nombre);
        },
      ),
    );
  }
}
