import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  final List<Producto> verduras = [
    //Producto("Gas", "assets/c1.png"),
  ];
  final List<Producto> frutas = [
    //Producto("vaso", "assets/v1.png"),
  ];

  String selectedCategory = "Carlos Alberto";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Parcial 3"),
          backgroundColor: Color.fromARGB(255, 34, 31, 170)),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/1.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = "Carlos Alberto";
                    });
                  },
                  child: Text("Nombre"),
                  style: ElevatedButton.styleFrom(
                    primary: selectedCategory == "Carlos Alberto"
                        ? Color.fromARGB(255, 34, 31, 170)
                        : Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = "Mestizo Rivas";
                    });
                  },
                  child: Text("Apellidos"),
                  style: ElevatedButton.styleFrom(
                    primary: selectedCategory == "Mestizo Rivas"
                        ? Color.fromARGB(255, 34, 31, 170)
                        : Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = "Mostrando Personajes";
                    });
                  },
                  child: Text("Personajes"),
                  style: ElevatedButton.styleFrom(
                    primary: selectedCategory == "Mostrando Personajes"
                        ? Color.fromARGB(255, 34, 31, 170)
                        : Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              selectedCategory,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: selectedCategory == "Mostrando los Datos"
                      ? verduras.map((e) => buildButton(e)).toList()
                      : frutas.map((e) => buildButton(e)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(Producto producto) {
    return InkWell(
      onTap: () {
        // Acciones a realizar al seleccionar un botón
      },
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              producto.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(producto.nombre),
        ],
      ),
    );
  }
}

class Producto {
  final String nombre;
  final String image;

  Producto(this.nombre, this.image);
}
