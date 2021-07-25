import 'package:flutter/material.dart';

class TerminosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: screenH * 0.006),
      child: Text('Terminos y Condiciones de uso',
          style: TextStyle(
              fontWeight: FontWeight.w100,
              color: Colors.black54,
              fontSize: 10)),
    );
  }
}