import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

class ChWidget extends StatelessWidget {
  const ChWidget({super.key});

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
                WebSocketSingleton.getInstance().sendMessage("CHANNELUP");
              },
              icon: Icon(Icons.arrow_drop_up)),
          Text('CH',style: TextStyle(fontWeight: FontWeight.bold)),
          IconButton(
              onPressed:(){
                WebSocketSingleton.getInstance().sendMessage("CHANNELDOWN");
              },
              icon:Icon(Icons.arrow_drop_down)),
      ],
      ),
    );
  }
}
