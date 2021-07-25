import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  final bool teclado;

  LogoWidget({required this.teclado});

  @override
  Widget build(BuildContext context) {

    final screenH = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Center(
          child: Container(
        padding: EdgeInsets.only(
          right: screenH * 0.10,
          left: screenH * 0.10,
          top: screenH * 0.03,
        ),
        child: Column(
          children: [
            Image(
                image: AssetImage(
                  // 'assets/icon-message.png',
                  'assets/chat.png',
                ),
                height: teclado ? screenH * 0.25 /2 : screenH * 0.25 ),
            SizedBox(
              height: 10,
            ),
            if(!teclado)Text(
              'ChatApp',
              style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            ),
          ],
        ),
      )),
    );
  }
}