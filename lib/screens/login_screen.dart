import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lavie/shared/shared_component.dart';
import 'package:lavie/screens/sign_up.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('asset/greenleaves.png',),
            Column(
              children: [
                SizedBox(height: 20.0,),
                Text('la vie',
                  style: GoogleFonts.meddon(fontSize: 30.0),),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: (){},
                      child: Text('Sign up'),),
                    MaterialButton(
                      onPressed: (){},
                      child: Text('Login'),),
                  ],),
                SizedBox(height: 20.0,),
                Container(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultTextFormField(type: TextInputType.emailAddress,
                        label:'Email' ,
                        icon: Icon(Icons.email)),
                    SizedBox(height: 20.0,),
                    defaultTextFormField(type: TextInputType.visiblePassword,
                        label:'password' ,
                        icon: Icon(Icons.remove_red_eye)),
                    SizedBox(height: 20.0,),
                    defaultButton(defaultText: 'login', function: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },),
                  ],),),

              ],
            ),],
        ),
      )

        


    );
  }
}
