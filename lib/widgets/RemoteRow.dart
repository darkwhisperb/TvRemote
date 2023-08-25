import 'package:flutter/material.dart';
import 'package:untitled/WebSocketSingleton.dart';

class RemoteRow extends StatelessWidget {
  const RemoteRow({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            IconButton(
              icon: Image.asset('assets/images/netflix.png'),
              iconSize:50 ,
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("NETFLIX");
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/primevideo.png'),
              iconSize: 41,
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("PRIME_VIDEO");
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/google.png'),
              iconSize: 43,
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("BROWSER");
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/youtube.png'),
              iconSize: 50,
              onPressed: () {
                WebSocketSingleton.getInstance().sendMessage("YOUTUBE");
              },
            ),

        ],
      ),
    );
  }
}
