import 'package:chatapp/routes/routes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   textTheme: GoogleFonts.montserratTextTheme(
      //     Theme.of(context).textTheme,
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      routes: getRoutes(),
      title: 'Chat App',
      initialRoute: 'login',
    );
  }
}


// Fonts : varelaTextTheme, varelaRoundTextTheme, zillaSlabTextTheme ,comfortaaTextTheme, sora, bioRhymeTextTheme