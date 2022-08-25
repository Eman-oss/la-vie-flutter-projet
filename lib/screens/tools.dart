import 'package:flutter/material.dart';
import 'package:lavie/shared/shared_component.dart';
class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400.0,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.greenAccent),
        child: Column(
          children: [
          Row(children: [
            Expanded(child: Image.asset('asset/plant.png',fit: BoxFit.cover,)),
            Expanded(
              child: Row(children: [
                TextButton(onPressed: (){}, child:Text('-')),
                Text('0'),
                TextButton(onPressed: (){}, child:Text('+')),
              ],),
            )
          ],),
            Text('plant'),
            Text('plant'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: defaultButton(function: (){},defaultText: 'Add to cart',dBorder: 10.0,),
            ),
        ],),
      ),
    );
  }
}
