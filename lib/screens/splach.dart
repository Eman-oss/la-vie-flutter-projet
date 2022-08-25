import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';


class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          color: Colors.white,
          child: Column(
            children: [
             // Image.asset('asset/or.png', ),
              Image.asset('asset/vie.png',fit: BoxFit.fill,height: 12.0,),
              Text('La Vie',style: GoogleFonts.meddon(fontSize: 28.0,),)
            ],
          ),
        ),
        nextScreen: Login(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 2000,
      ),
    );
  }
}
