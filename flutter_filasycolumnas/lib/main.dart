import 'package:flutter/material.dart';
import 'package:flutter_filasycolumnas/PAGINAS/principal.dart';

void main() {
  runApp(RowCols());
}

class RowCols extends StatelessWidget {
  const RowCols({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'filas y columnas',
      home: Principal(),
    );
  }
}
