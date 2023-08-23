import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

class JoyStick extends StatelessWidget {
  const JoyStick({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(80),
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
      ),
      child: Column(children: [
        Row(children: [
          IconButton(
              onPressed: (){
                WebSocketSingleton.getInstance().sendMessage("UP");
              },
              icon: Icon(Icons.keyboard_arrow_up),
              color: Colors.black),
        ],),
        Row(children: [
          IconButton(
              onPressed: (){
                WebSocketSingleton.getInstance().sendMessage("LEFT");
              },
              icon: Icon(Icons.keyboard_arrow_left),
              color: Colors.black),
          IconButton(
            onPressed: (){
              WebSocketSingleton.getInstance().sendMessage("ENTER");
            },
            icon: Icon(Icons.circle_outlined),
            color: Colors.black54, iconSize: 50,),
          IconButton(
              onPressed: (){
                WebSocketSingleton.getInstance().sendMessage("RIGHT");
              },
              icon: Icon(Icons.keyboard_arrow_right),
              color: Colors.black),
        ],),
        Row(children: [
          IconButton(onPressed: (){
            WebSocketSingleton.getInstance().sendMessage("DOWN");
          },
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              color: Colors.black),
        ],)
      ],),
    );
  }
}

