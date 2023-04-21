import 'package:flutter/material.dart';
import 'package:flutter_proyecto/paginas/principal.dart';

void main() {
  runApp(Proyecto());
}

class Proyecto extends StatelessWidget {
  const Proyecto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: principal(),
    );
  }
}
