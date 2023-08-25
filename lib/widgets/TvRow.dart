import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

class TvRow extends StatelessWidget {
  const TvRow({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
        width: 300,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30) ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
            IconButton(
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("HOME");
              },
              icon: Icon(Icons.home_outlined),
              iconSize: 30,
            ),
            SizedBox(width:10),
            IconButton(
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("INPUT");
              },
              icon: Icon(Icons.exit_to_app),
              iconSize: 30,
            ),
          SizedBox(width:10),
            IconButton(
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("BACK");
              },
              icon: Image.asset('assets/images/backnn.png'),
              iconSize: 28,
            ),
            SizedBox(width:10),
            IconButton(
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("MUTE");
              },
              icon: Icon(Icons.volume_off),
              iconSize: 30,
            ),

        ],
      ),
    );
  }
  }




