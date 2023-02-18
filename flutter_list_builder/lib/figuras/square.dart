import 'package:flutter/material.dart';

class Myfigura extends StatelessWidget {
  final child;
  Myfigura({required this.child});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          // primer hijo
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 100,
            color: Colors.blue[200],
            child: Center(
                child: Text(
              child,
              style: TextStyle(fontSize: 40),
            )),
          ), //hijo
        ),

        Padding(
          // primer hijo
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
              height: 100,
              child: Image.network(
                  "https://datcrusher.ca/wp-content/uploads/2016/06/Background.jpg")),
        ), //hijo
      ],
    );
  }
}
