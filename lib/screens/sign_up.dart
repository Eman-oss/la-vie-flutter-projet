import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lavie/screens/home_screen.dart';
import 'package:lavie/shared/shared_component.dart';


class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Image(image: AssetImage('asset/greenleaves.png'),)),
                    SizedBox(height: 20.0,),
                    Text('la vie',
                      style: GoogleFonts.meddon(fontSize: 30.0)),
                    SizedBox(height: 10.0,),
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
                    Row(children: [
                      Expanded(
                        child: defaultTextFormField(type: TextInputType.text,
                            label:'First name' ,
                            icon: Icon(Icons.person)
                        ),
                      ),
                        SizedBox(width: 20.0,),
                      Expanded(
                        child: defaultTextFormField(type: TextInputType.text,
                            label:'Last name' ,
                            icon: Icon(Icons.person)),
                      ),
                    ],),
                    SizedBox(height: 10.0,),
                    Container(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultTextFormField(type: TextInputType.emailAddress,
                            label:'Email' ,
                            icon: Icon(Icons.email)),
                        SizedBox(height: 10.0,),
                        defaultTextFormField(type: TextInputType.visiblePassword,
                            label:'password' ,
                            icon: Icon(Icons.remove_red_eye)),
                        SizedBox(height: 10.0,),
                        defaultTextFormField(type: TextInputType.visiblePassword,
                            label:'Confirm password' ,
                            icon: Icon(Icons.confirmation_num)),
                        SizedBox(height: 20.0,),
                        Container(
                          child: defaultButton(defaultText: 'login', function: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          ),
                        ),
                      ],),)
                  ],
                ),
              ),
            ),
          ),
        )




    );
  }
}
