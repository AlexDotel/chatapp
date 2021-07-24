import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.height * 0.03.toDouble();
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _LogoWidget(),
            _FormWidget(),
            _LabelsWidget(),
            Padding(
              padding: EdgeInsets.only(bottom: screenSize * 0.20),
              child: Text('Terminos y Condiciones de uso',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.black54,
                      fontSize: 10)),
            )
          ],
        ));
  }
}

//Logo Widget
class _LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Center(
          child: Container(
        padding: EdgeInsets.only(
          right: screenSize * 0.10,
          left: screenSize * 0.10,
          top: screenSize * 0.05,
        ),
        child: Column(
          children: [
            Image(
                image: AssetImage(
                  'assets/icon-message.png',
                ),
                height: screenSize * 0.25),
            SizedBox(
              height: 10,
            ),
            Text(
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

//FormWidget
class _FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.20),
      child: Column(
        children: [
          TextField(),
          TextField(),
          Padding(
            padding: EdgeInsets.only(top: screenSize.height * 0.01 ),
            child: ElevatedButton(
                onPressed: null,
                child: Text('Login',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)))),
          )
        ],
      ),
    );
  }
}

//LabelsWodget
class _LabelsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('¿No tienes una cuenta?',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    fontSize: 12))),
        SizedBox(
          height: 10,
        ),
        Text('¡Crea una ahora!',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 15))),
      ],
    );
  }
}
