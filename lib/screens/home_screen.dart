import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lavie/screens/all_products.dart';
import 'package:lavie/screens/plants.dart';
import 'package:lavie/screens/seeds.dart';
import 'package:lavie/shared/shared_component.dart';
import 'package:lavie/screens/tools.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';


class HomeScreen extends StatelessWidget {
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.blue, labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Search", Colors.orange, labelStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TabItem(Icons.layers, "Reports", Colors.red),
    TabItem(Icons.notifications, "Notifications", Colors.cyan),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:35.0,horizontal: 20.0),
        child: Column(
          children: [
            Text(
              'la vie',
              style: GoogleFonts.meddon(fontSize: 30.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    height: 46.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: HexColor('#F5F5F5'),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: HexColor('#979797'),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                              fontSize: 16.0, color: HexColor('#979797')),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 40.0,
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: HexColor('#1ABC00'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: HexColor('#F8F8F8')),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllPlants()));
                        },
                        child: const Text('All'))),
                const SizedBox(
                  width: 5.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: HexColor('#F8F8F8')),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Plants()));
                        },
                        child: const Text('Plants'))),
                const SizedBox(
                  width: 5.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: HexColor('#F8F8F8')),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Seeds()));
                        },
                        child: const Text('Seeds'))),
                const SizedBox(
                  width: 2.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: HexColor('#F8F8F8')),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Tools()));
                        },
                        child: const Text('Tools'))),
              ],
            ),
            Container(
              height: 400.0,
              child: GridView.count(
                crossAxisCount: 2,
                physics: const ScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.7,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  buildStack(),
                  buildStack(),
                  buildStack(),
                  buildStack(),
                  buildStack(),
                  buildStack(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CircularBottomNavigation(
        tabItems, selectedCallback: ( selectedPos) {
          print("clicked on $selectedPos");
        },

      ),

    );
  }

  Widget buildStack()=>  Container(
    width: 200.0,
    height: 200.0,
    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),color: Colors.grey[200],),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('asset/Lovepik.png',fit: BoxFit.cover,height: 130.0,width: 100.0,alignment: Alignment.topRight),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: (){},
                child: Text('-')),
            Text('0'),
            TextButton(
                onPressed: (){},
                child: Text('+')),
          ],),
        Stack(
          children: [
            Container(
              width: 140.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Gardenia plant'),
                  SizedBox(height: 5.0,),
                  Text('70 Egp'),
                  SizedBox(height: 5.0,),
                  defaultButton(function: (){}, defaultText: 'add to cart')


                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );

}
