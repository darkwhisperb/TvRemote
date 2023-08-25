import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

  class NumberRow1 extends StatelessWidget {
  const NumberRow1({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:50),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("1");
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
                child: Text("1",style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
              SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("2");
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
                child: Text('2',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
              SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {
                  WebSocketSingleton.getInstance().sendMessage("3");
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
                child: Text('3',style:TextStyle(fontWeight: FontWeight.w600) ),
              ),
            ],
          ),

        ],
      ),
    );
  }
  }