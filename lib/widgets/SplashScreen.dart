import 'package:flutter/material.dart';
import 'package:untitled/widgets/qr/qr_scanner.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  int splashtime = 1;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(

        //pushReplacement = replacing the route so that
        //splash screen won't show on back button press
        //navigation to Home page.
          builder: (context){
            return QRScanner();

          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            alignment: Alignment.center,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //vertically align center
                children:<Widget>[
                  Container(
                    child:SizedBox(
                        //_getSavedIpAddress(code);
                        height:MediaQuery.of(context).size.height,
                        width:MediaQuery.of(context).size.width,
                        child:Image.asset("assets/images/ekran.png", fit: BoxFit.cover)
                    ),
                  ),

                ]
            )
        )
    );
  }
}