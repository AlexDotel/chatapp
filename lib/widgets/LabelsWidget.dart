import 'package:chatapp/pages/RegisterPage.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:chatapp/styles/TextStyles.dart';

class LabelsWidget extends StatelessWidget {

  String labelQuestion;
  String labeltoPress;
  final Widget ruta;

  LabelsWidget({
    this.labelQuestion = 'Label Question ',
    this.labeltoPress = 'Label Text',
    required this.ruta
    });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Column(
      children: [
        Text(labelQuestion,
            style: GoogleFonts.montserrat(textStyle: hint)),
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.010, bottom: screenHeight * 0.015),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => ruta,
                ),
              );
            },
            child: Text(labeltoPress,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))),
          ),
        ),
      ],
    );
  }
}