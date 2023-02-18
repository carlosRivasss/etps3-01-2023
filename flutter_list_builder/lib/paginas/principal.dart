import 'package:flutter/material.dart';
import 'package:flutter_list_builder/figuras/square.dart';

import '../figuras/circulos.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    final List _post = ['pantalla 1', 'pantalla 2', 'pantalla 3', 'pantalla 4'];
    List _historia = ['historia 1', 'historia 2', 'historia 3', 'historia 4'];
    return Scaffold(
      body: Column(
        children: [
          //INSTAGRAM HISTORIAS
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _historia.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Mycirculo();
                }),
          ),

          //INSTAGRAM POST

          Expanded(
            //height: 300,
            child: ListView.builder(
                //elementos a agregar a una vista
                //post length es dependiendo cuantos yo agrege manual o puede ser quemado poner 4 de un solo
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  return Myfigura(child: _post[index]);
                }),
          ),
        ],
      ),

      /*
      lo convertimos en un builder
        ListView(
        //padre
        //para que no se desplace la lista
        //physics: NeverScrollableScrollPhysics(),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //hijos

          /* esto lo cambiamos en la clase square

          Padding(
            // primer hijo
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.amberAccent[200],
            ), //hijo
          ),
          Padding(
            // primer hijo
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.deepOrange[200],
            ), //hijo
          ),
          Padding(
            // primer hijo
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.blue[200],
            ), //hijo
          ),*/

          // ignore: prefer_const_constructors
          Myfigura(),

          Myfigura(),
        ],
      ),fin de listview*/
    );
  }
}
