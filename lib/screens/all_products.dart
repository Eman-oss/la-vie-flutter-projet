import 'package:flutter/material.dart';
import 'package:lavie/shared/shared_component.dart';
import 'home_screen.dart';


class AllPlants extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.only(top:50.0),
          child: Column(
            children: [
              Row(
                children: [
                Positioned(child: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },)),
                SizedBox(width: 85.0,),
                Text('My Cart',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,),)
              ],),
              SizedBox(height: 20.0,),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true
                    ,itemBuilder: (context,index)=>listItem(),
                    separatorBuilder: (context,index)=>SizedBox(height: 20.0,),
                    itemCount: 6),
              ),
              Container(
                height: 70.0,
                child: Row(children: [
                  SizedBox(width: 20.0,),
                  Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,
                  ),),
                  SizedBox(width: 150.0,),
                  Text('180.000',style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,
                  ),),
                ],),
              ),
              SizedBox(height: 10.0,),
              defaultButton( function: (){}, defaultText: 'Check out',dBorder: 10.0)
            ],
          ),
        ),
      ),
    );
  }
  //item for listview.
Widget listItem()=> Container(
  height: 120.0,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset('asset/Rectangle.png',fit: BoxFit.cover),
      Expanded(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 50.0),
              child: Column(
                children: [
                  Text('plant',style: TextStyle(fontSize: 20.0),),
                  Text('plant'),
                ],),
            ),

            Row( children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){}, child:Text('-')),
                    Text('0'),
                    TextButton(onPressed: (){}, child:Text('+')),

                  ],
                ),),
              Expanded(child: Icon(Icons.recycling)),
            ],)
          ],
        ),
      )
    ],
  ),

);
}
