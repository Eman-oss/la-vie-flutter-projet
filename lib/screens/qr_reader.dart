import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lavie/screens/home_screen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


 class QrExample extends StatefulWidget {

   const QrExample({Key? key}) : super(key: key);

   @override
   State<QrExample> createState() => _QrExampleState();
 }
 
 class _QrExampleState extends State<QrExample> {
   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
   Barcode? result;
   QRViewController? dcontroller;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 10.0),
         child: Column(
           children: <Widget>[
             Container(
               height: 30.0,

               child: Row(children: [
                 Positioned(child: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                 },)),
                 SizedBox(width: 80.0,),
                 Text('QR Reader',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
               ],),
             ),
             SizedBox(height: 20.0,),
             Expanded(
               flex: 5,
               child: QRView(
                 key: qrKey,
                 onQRViewCreated: _onQRViewCreated,
               ),
             ),
             Expanded(
               flex: 1,
               child: Center(
                 child: (result != null)
                     ? Text(
                     'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                     : Text('Scan a code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
               ),
             )
           ],
         ),
       ),
     );
   }
   void _onQRViewCreated(QRViewController controller) {
     this.dcontroller = controller;
     controller.scannedDataStream.listen((scanData) {
       setState(() {
         result = scanData;
       });
     });
   }
   void dispose() {
     dcontroller?.dispose();
     super.dispose();
   }
 }
 