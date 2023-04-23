import 'package:flutter/material.dart';
import 'package:parcial/principal.dart';

void main() {
  runApp(parcial());
}

class parcial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: principal(),
        ),
      ),
    );
  }
}
