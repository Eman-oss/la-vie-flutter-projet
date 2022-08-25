import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lavie/screens/home_screen.dart';
import 'package:lavie/screens/login_screen.dart';
import 'package:lavie/screens/qr_reader.dart';
import 'package:lavie/screens/seeds.dart';
import 'package:lavie/screens/sign_up.dart';
import 'package:lavie/screens/splach.dart';
import 'package:lavie/screens/tools.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplachScreen(),

    );
  }
}





