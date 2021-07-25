import 'package:chatapp/pages/LoginPage.dart';
import 'package:chatapp/widgets/CustomInputWidget.dart';
import 'package:chatapp/widgets/SubmitButtonWidget.dart';
import 'package:flutter/material.dart';

import 'package:chatapp/widgets/LabelsWidget.dart';
import 'package:chatapp/widgets/LogoWidget.dart';
import 'package:chatapp/widgets/TerminosWidget.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body:
          // SingleChildScrollView(
          //   physics: BouncingScrollPhysics(),
          //   child:
          Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LogoWidget(teclado: isKeyboard),
          _LoginFormWidget(),
          if (!isKeyboard)
            LabelsWidget(
              labelQuestion: '¿Ya tienes una cuenta?',
              labeltoPress: '¡Inicia sesion ahora!',
              ruta: LoginPage(),
            ),
          if (!isKeyboard) TerminosWidget()
        ],
      ),
    );
  }
}

class _LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<_LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final nameController = TextEditingController();
    final mailController = TextEditingController();
    final pssController = TextEditingController();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.20),
      child: Column(
        children: [
          CustomInputWidget(
            inputType: TextInputType.text,
            tHint: 'Nombre',
            icon: Icons.verified_user,
            controller: nameController,
          ),
          CustomInputWidget(
            inputType: TextInputType.emailAddress,
            tHint: 'Correo Electronico',
            icon: Icons.mail,
            controller: mailController,
          ),
          CustomInputWidget(
              obscure: true,
              tHint: 'Contraseña',
              icon: Icons.password,
              controller: pssController),
          SubmitButtonWidget(
            screenSize: screenSize,
            buttonText: 'Login',
            onPressed: () {
              print('MAIL: ${mailController.text}');
              print('PSS: ${pssController.text}');
            },
          )
        ],
      ),
    );
  }
}
