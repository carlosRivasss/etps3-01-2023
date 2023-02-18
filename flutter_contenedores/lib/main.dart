import 'package:flutter/material.dart';

void main() {
  runApp(Contenedores());
}

class Contenedores extends StatelessWidget {
  //widget que no cambia

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //quitar marca de agua
      debugShowCheckedModeBanner: false,
      home: ContainesF(),
    );
  }
}

class ContainesF extends StatefulWidget {
  // Cambia en su ejecucion
  const ContainesF({super.key});

  @override
  State<ContainesF> createState() => _ContainesFState();
}

class _ContainesFState extends State<ContainesF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            //espaciado padding predeterminado
            //padding: EdgeInsets.all(50),
            height: 100,
            //width: 200,
            //alineado aligment
            //alignment: Alignment(-1, 1),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              //color: Color.fromARGB(255, 24, 170, 29),
              //circulo coloreado es solo shape
              //linea de circulo border y shape
              //border: Border.all(color: Colors.black, width: 20),
              //shape: BoxShape.circle
              //rectangulo
              //borderRadius: BorderRadius.circular(15)),
              //child: Text("Rectangulo", style: TextStyle(fontSize: 20),
              borderRadius: BorderRadius.circular(5),
              //sombra al elemento boxShadow
              boxShadow: [
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(4.0, 4.0),
                    //difuminado
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                    color: Color.fromARGB(255, 240, 183, 26),
                    offset: Offset(-4.0, -4.0),
                    //difuminado
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
            ),
          ),
          Expanded(
            //se agranda con flex
            flex: 2,
            child: Container(
              //espaciado padding predeterminado
              //padding: EdgeInsets.all(50),
              //height: 100,
              //width: 200,
              //alineado aligment
              //alignment: Alignment(-1, 1),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 214, 210, 221),
                //color: Color.fromARGB(255, 24, 170, 29),
                //circulo coloreado es solo shape
                //linea de circulo border y shape
                //border: Border.all(color: Colors.black, width: 20),
                //shape: BoxShape.circle
                //rectangulo
                //borderRadius: BorderRadius.circular(15)),
                //child: Text("Rectangulo", style: TextStyle(fontSize: 20),
                borderRadius: BorderRadius.circular(5),
                //sombra al elemento boxShadow
                /*boxShadow: [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(4.0, 4.0),
                      //difuminado
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Color.fromARGB(255, 240, 183, 26),
                      offset: Offset(-4.0, -4.0),
                      //difuminado
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ],*/
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 221, 33, 33),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
