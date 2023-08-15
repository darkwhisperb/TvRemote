import 'package:control_pad_plus/control_pad_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TVRemoteApp());
}

class TVRemoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TV Remote App',
      debugShowCheckedModeBanner: false,
      home: TVRemoteScreen(),
    );
  }
}

class TVRemoteScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
     appBar: AppBar(
        centerTitle: true,
       title: Image.asset('assets/images/sunnylogo.png', width: 200, alignment: Alignment.center,),
         backgroundColor: Colors.white,

       leading: IconButton(
         onPressed: () {
           // Sol taraftaki ikonun tıklandığında yapılacak işlem
         },
         icon: Icon(Icons.qr_code_2_outlined),
         iconSize: 40,
         color: Colors.black,
       ),
       actions: [
         IconButton(
           onPressed: () {
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
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10,height:50),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text("1"),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('2'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('3'),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                     SizedBox(width: 10,height:50),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('4'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('5'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('6'),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('7'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('8'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('9'),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        IconButton(
                        onPressed: () {},
                          icon: Icon(Icons.menu),
                          iconSize: 30,
                          focusColor: Colors.white,

                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.all(25), // Düğme iç boşluğu
                            primary: Colors.black, // Metin rengi
                            side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90), // Kenar yuvarlatma
                            ),
                          ),
                          child: Text('0'),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                        onPressed:(){},
                          icon: Icon(Icons.keyboard_rounded),
                          iconSize: 30,
                            highlightColor: Colors.white,
                    ),
                  ],
                 ),
                ],
              ),
              ),
            ],
            ),
            SizedBox(height:30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 130,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_up),
                      Text('VOL',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                JoystickView(
                  innerCircleColor: Colors.white,
                  backgroundColor: Colors.white,
                  iconsColor: Colors.black,
                  showArrows: true,
                  size: 170.0,
                ),
                Container(
                  height: 130,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_up),
                      Text('CH',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            TvRow([
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_outlined),
                iconSize: 30,
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.exit_to_app),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/backk.png'),
                // Unicode değeri ve font ailesi
                iconSize: 30, // İkonun boyutu
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.volume_off),
                iconSize: 30,
              ),

            ]),

            SizedBox(height: 15),
            RemoteRow([
              IconButton(
                icon: Image.asset('assets/images/netflix.png'),
                iconSize:50 ,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/primevideo.png'),
                iconSize: 41,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/google.png'),
                iconSize: 43,
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/youtube.png'),
                iconSize: 50,
                onPressed: () {},
              ),
            ]),
          ],
        ),
      ),
    );

  }
}

class RemoteRow extends StatelessWidget {
  final List<Widget> children;

  RemoteRow(this.children);

  @override
  Widget build(BuildContext context) {


    return Container(
      width: 300,
      // rengini ve yuvarlama ayarlarsın
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,

      ),
    );
  }
}

  class TvRow extends StatelessWidget {
    final List<Widget> children;
    TvRow(this.children);

    @override
    Widget build(BuildContext context) {
      return Container(
        width: 200,
        // rengini ve yuvarlama ayarlarsın
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,

        ),
      );
    }
  }

