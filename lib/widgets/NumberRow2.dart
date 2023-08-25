import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

class NumberRow2 extends StatelessWidget {
  const NumberRow2({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height:50),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("4");
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(25), // Düğme iç boşluğu
                  primary: Colors.black, // Metin rengi
                  side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                  ),
                ),
                child: Text('4',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
              SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("5");
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(25), // Düğme iç boşluğu
                  primary: Colors.black, // Metin rengi
                  side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50), // Kenar yuvarlatma
                  ),
                ),
                child: Text('5', style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("6");
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(25), // Düğme iç boşluğu
                  primary: Colors.black, // Metin rengi
                  side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // Kenar yuvarlatma
                  ),
                ),
                child: Text('6',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}