import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumberRow4 extends StatelessWidget {
  const NumberRow4({super.key});

  @override
  Widget build(BuildContext context){
    String keyboardInputValue = "";
    return Container(
     child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:10),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("MENU");
              },
              icon: Icon(Icons.menu),
              iconSize: 30,
              color: Colors.white,
              highlightColor: Colors.white,
              splashRadius: 30,

            ),
            SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("0");
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(25),
                // Düğme iç boşluğu
                primary: Colors.black,
                // Metin rengi
                side: BorderSide(color: Colors.white),
                // Kenar çizgisi rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90), // Kenar yuvarlatma
                ),
              ),
              child: Text('0', style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                // openDialog fonksiyonunu çağırıp AlertDialog'u gösterin
                showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(
                        title: Text('Arama'),
                        content: TextField(
                          autofocus: true,
                          onChanged: (newText) {
                            keyboardInputValue = newText;
                          },
                          decoration: InputDecoration(
                              hintText: 'Aramanızı giriniz.'),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              WebSocketSingleton.getInstance().sendMessage(
                                  "TEXT: " + keyboardInputValue);
                            },
                            child: Text('Giriş'),
                          ),
                        ],
                      ),
                );
              },
              icon: Icon(Icons.keyboard_rounded),
              iconSize: 30,
              color: Colors.white,
              highlightColor: Colors.white,
              splashRadius: 30,
            ),

        ],
      ),
    );
  }
}