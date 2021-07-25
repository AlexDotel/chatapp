// import 'package:flutter/material.dart';

// import 'package:chatapp/widgets/CustomInputWidget.dart';
// import 'package:chatapp/widgets/SubmitButtonWidget.dart';

// class LoginFormWidget extends StatefulWidget {
//   @override
//   _LoginFormWidgetState createState() => _LoginFormWidgetState();
// }

// class _LoginFormWidgetState extends State<LoginFormWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;

//     final mailController = TextEditingController();
//     final pssController = TextEditingController();

//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.20),
//       child: Column(
//         children: [
//           CustomInputWidget(
//             inputType: TextInputType.emailAddress,
//             tHint: 'Correo Electronico',
//             icon: Icons.mail,
//             controller: mailController,
//           ),
//           CustomInputWidget(
//               obscure: true,
//               tHint: 'Contraseña',
//               icon: Icons.password,
//               controller: pssController),
//           SubmitButtonWidget(
//             screenSize: screenSize,
//             buttonText: 'Login',
//             onPressed: () {
//               print('MAIL: ${mailController.text}');
//               print('PSS: ${pssController.text}');
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
