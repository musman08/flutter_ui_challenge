import 'package:flutter/material.dart';
import 'package:flutter_ui/avatar.dart';

Container winnerContainer(int num, String images, String playername){
  return Container(
    width: 100,
    height: 250,
    // color: color,
    child: Column(
      children: [
        Text("$num", style: const TextStyle(color: Colors.white),),
        const SizedBox(height: 10,),
        Image(image: AssetImage(images), height: 30,width: 30,),
       Padding(padding: const EdgeInsets.only(top: 8.0, left: 1.0, right: 1.0, bottom: 4.0),
         child: 
         avatarcontainer(100, 100, Colors.redAccent),
       ),
       const SizedBox(height: 10,),
       Text(playername, style: const TextStyle(color: Colors.white),),
       const SizedBox(height: 5,),
       const Text("Score", style: TextStyle(color: Color.fromARGB(255, 218, 186, 44), fontWeight: FontWeight.bold),),
      ],
    ),
  );
}