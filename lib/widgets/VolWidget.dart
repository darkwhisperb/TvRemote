import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class VolWidget extends StatelessWidget {
  const VolWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 110,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
    ),
    ],
    ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        IconButton(
            onPressed:(){
          WebSocketSingleton.getInstance().sendMessage("VOLUMEUP");
        },
            icon: const Icon(Icons.arrow_drop_up)),
        Text('VOL',style: TextStyle(fontWeight: FontWeight.bold)),
        IconButton(
            onPressed:(){
              WebSocketSingleton.getInstance().sendMessage("VOLUMEDOWN");

        },
            icon: const Icon(Icons.arrow_drop_down)),
      ],
      ),
    );
  }
}
