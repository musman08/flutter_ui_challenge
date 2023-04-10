import 'package:flutter/material.dart';
import 'package:flutter_ui/avatar.dart';

List<Container> generateContainerList() {
  List<Container> containerList = [];
  List<String> players = ["Hameed", "haris","zunair", "zaeem","zainab","usman","shakir","ismail"];
  List<String> score = ["1933","1899","1650","1590","1400","1399","1389","1100",];
  for (int i = 0; i < players.length; i++) {
    containerList.add(
      Container(
        width: 290,
        height: 80,
        color: Colors.black,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("${i+4}",style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              const SizedBox(width: 4,),
              Expanded(child: containerInList(players[i], score[i]),
              )
            ],
          )
        ),
      ),
    );
  }


  return containerList;
}
Container containerInList(String playername, String score){
  return Container(
                width: 270,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                    ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                         avatarcontainer(58, 58, Colors.green),
                        const SizedBox(width: 10,),
                        Expanded(child: Text(playername, style: const TextStyle(color: Colors.white,),),),
                        const SizedBox(width: 10,),
                        Expanded(child: Image.asset("assets/images/BronzeCrown.png", height: 30,)),
                        Expanded(child: Text(score, style: const TextStyle(color: Color.fromARGB(255, 218, 186, 44)))),
                      ],
                    ),
                  );
}