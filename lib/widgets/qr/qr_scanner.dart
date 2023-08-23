import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:untitled/WebSocketSingleton.dart';
import 'package:untitled/main.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:shared_preferences/shared_preferences.dart';



class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<QRScanner> createState() => _QRScannerState();
}


class _QRScannerState extends State<QRScanner> {

   bool isScanCompleted = false;
   late SharedPreferences _prefs; // SharedPreferences nesnesi

   void closeScreen(){
     isScanCompleted= false;
   }
   @override
   void initState() {
     super.initState();
     _initSharedPreferences(); // SharedPreferences'i başlatan fonksiyon
   }

   void _initSharedPreferences() async {
     _prefs = await SharedPreferences.getInstance();
   }

   // ... Diğer widget oluşturma kodları ...

   void _saveIpAddress(String ipAddress) {
     _prefs.setString('ipAddress', ipAddress); // IP adresini kaydetme
   }

   String? _getSavedIpAddress() {
     return _prefs.getString('ipAddress'); // Kaydedilmiş IP adresini alma
   }


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
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                          "QR kodu ekrandaki alana okutunuz.",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 15,
                             fontWeight: FontWeight.bold,
                           )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Tarama otomatik olarak başlayacaktır.",
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                      ),
                      ),
                    ],
                  ),
                ),
            Expanded(
              flex: 4,
                child: MobileScanner(
                // allowDuplicates: true,
                    onDetect: (barcode) {
                      if (!isScanCompleted){
                        String code = barcode.barcodes.last.rawValue ?? 'glglgjkhkjhuıhlkjhl';
                        isScanCompleted= true;

                        if (WebSocketSingleton.getInstance().connectToWebSocket(code)) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TVRemoteScreen()));
                        }
                      }
                    },
                ),
            ),
            Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Developed by FBK",
                  style: TextStyle(
                  color: Colors.blue,
                  fontSize:14,
                  letterSpacing: 1)),
                ),
            ),
          ],


        ),
      ),
    );
  }
}
