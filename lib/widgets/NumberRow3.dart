import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

class NumberRow3 extends StatelessWidget {
  const NumberRow3({super.key});

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
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("7");
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
                child: Text('7',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("8");
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
                child: Text('8',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("9");
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.all(25), // Düğme iç boşluğu
                  primary: Colors.black, // Metin rengi
                  side: BorderSide(color: Colors.white),// Kenar çizgisi rengi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                    // Kenar yuvarlatma
                  ),
                ),
                child: Text('9',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}