import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumberRow4 extends StatelessWidget {
  const NumberRow4({super.key});

  @override
  Widget build(BuildContext context){

    TextEditingController keyboardInputController = TextEditingController();
    String lastKeyboardValue = "";

    return Container(
     child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:50),
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
            SizedBox(width: 55),
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
            SizedBox(width: 55),
            IconButton(
              onPressed: () {
                keyboardInputController.text = lastKeyboardValue;

                showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(
                        title: Text('Please enter a text:'),
                        content: TextField(
                          autofocus: true,
                          controller: keyboardInputController,
                          decoration: InputDecoration(
                              hintText: 'Text'),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              lastKeyboardValue = keyboardInputController.text;

                              Navigator.pop(context);

                              WebSocketSingleton.getInstance().sendMessage(
                                  "TEXT: ${keyboardInputController.text}");

                            },
                            child: Text('Enter'),
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