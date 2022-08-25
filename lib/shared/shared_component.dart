import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultButton({Color defaultColor =const Color(0xFF1ABC00),
                      double dBorder = 30.0,
                     required VoidCallback? function,
                     required String defaultText,
  double? Height,
}) => Container(
  width: 120,
  height: 40,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(dBorder),
  color:defaultColor ,
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(defaultText,
      style: TextStyle(color: Colors.white),),),
);

Widget defaultTextFormField({
                     required TextInputType type,
                     required String label ,
                     required Icon icon,



}) =>  TextFormField(
  keyboardType: type,
  decoration: InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
    prefixIcon: icon,

  )
);

Widget defaultContainer () =>Container(
  color: Colors.blueGrey,
  child: Column(
    children: [
      Text('hello',style: TextStyle(color: Colors.white),),
      Text('hi')
    ],
  ),
);
