import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:chatapp/styles/TextStyles.dart';

class CustomInputWidget extends StatelessWidget {
  final String tHint; //Obligatorio //Recibe el texto de Hint
  final IconData icon; //Obligatorio //Recibe el icono
  final TextInputType inputType; //Para saber de que tipo sera el teclado
  final bool obscure; //Depende si es contraseña
  final bool boxShadow; //Para saber si quiere sombra
  final TextEditingController controller;

  CustomInputWidget({
    required this.icon,
    required this.tHint,
    required this.controller,
    this.inputType = TextInputType.text,
    this.obscure = false,
    this.boxShadow = false,
  });
  //Asi se declaran parametros opcionales, como el KeyboardType
  //que sino recibe nada asigna el valor por defecto.

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: screenSize.width * 0.040, top: 2),
      margin: EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        if (boxShadow)
          BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, 0))
      ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: TextField(
        controller: controller,
        autofocus: true,
        textAlign: TextAlign.start,
        obscureText: obscure,
        keyboardType: inputType,
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontSize: 15, color: Colors.black87)),
        decoration: InputDecoration(
            focusColor: Colors.red,
            suffixIcon: Icon(icon),
            border: InputBorder.none,
            hintStyle: GoogleFonts.montserrat(textStyle: hint),
            hintText: tHint),
      ),
    );
  }
}
