import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/ChWidget.dart';
import 'package:untitled/widgets/JoyStick.dart';
import 'package:untitled/widgets/NumberRow1.dart';
import 'package:untitled/widgets/NumberRow2.dart';
import 'package:untitled/widgets/NumberRow3.dart';
import 'package:untitled/widgets/NumberRow4.dart';
import 'package:untitled/widgets/RemoteRow.dart';
import 'package:untitled/widgets/qr/qr_scanner.dart';
import 'package:untitled/widgets/VolWidget.dart';
import 'package:untitled/widgets/TvRow.dart';
import 'package:untitled/WebSocketSingleton.dart';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  runApp(const TVRemoteApp());
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();
}


class TVRemoteApp extends StatelessWidget {
  const TVRemoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TV Remote App',
      debugShowCheckedModeBanner: false,
      //home: TVRemoteScreen(),
      home: QRScanner()
    );
  }
}
class TVRemoteScreen extends StatelessWidget {
  String keyboardInputValue = "";
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(gradient: LinearGradient(
      begin: Alignment.bottomLeft,
     end: Alignment.topRight,
      colors: [
        Color(0xFF05092C),
        Color(0xFF3E1783),
        Color(0xFF5643A1),
        Color(0xFF0868E8),
        Color(0xFF061E83),
        Color(0xFF05092C),
      ],
    ),
     appBar: AppBar(
        centerTitle: true,
       title: Image.asset('assets/images/sunnylogo.png', width: 200, alignment: Alignment.center,),
         backgroundColor: Colors.white,

       leading: IconButton(
         onPressed: () {
       }, // Sol taraftaki ikonun tıklandığında yapılacak işlem
         icon: Icon(Icons.qr_code_2_outlined),
         iconSize: 40,
         color: Colors.black,
       ),
       actions: [
         IconButton(
           onPressed: () {
             WebSocketSingleton.getInstance().sendMessage("POWER");
             // Sağ üst köşedeki ikonun tıklandığında yapılacak işlem
           },
           icon: Icon(Icons.power_settings_new),
           iconSize: 40,
           color: Colors.black,
         ),
       ],
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( width: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                  children: [
                    NumberRow1(),
                    SizedBox(height:10),
                    NumberRow2(),
                    SizedBox(height:10),
                    NumberRow3(),
                    SizedBox(height:10),
                    NumberRow4(),
                ],
              ),
              ),
            ],
            ),
            SizedBox(height:25),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                VolWidget(),
                JoyStick(),
                ChWidget(),
              ],
            ),
            SizedBox(height: 20),
            TvRow(),
            SizedBox(height: 15),
            RemoteRow(),
          ],
        ),
      ),
    );
  }
}




