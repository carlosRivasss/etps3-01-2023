import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //centrarlo
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 203, 254, 83),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.indigoAccent[100],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 243, 28, 28),
          ),
        ],
      ),
    );
  }
}
