import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:chatapp/styles/TextStyles.dart';

class SubmitButtonWidget extends StatelessWidget {
  String buttonText;
  Size screenSize;
  VoidCallback onPressed;
  final bool boxShadow; //Para saber si quiere sombra

  SubmitButtonWidget(
      {this.buttonText = 'button',
      required this.screenSize,
      required this.onPressed,
      this.boxShadow = false});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.blue[400],
      minimumSize: Size(88, 36),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );

    return Container(
      margin: EdgeInsets.only(top: screenSize.height * 0.005),
      child: ElevatedButton(
          style: raisedButtonStyle,
          onPressed: onPressed,
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(buttonText,
                style: GoogleFonts.montserrat(textStyle: blackButton)),
          )),
    );
  }
}
