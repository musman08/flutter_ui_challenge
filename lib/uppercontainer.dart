import 'package:flutter/material.dart';
import 'package:flutter_ui/winnerContainer.dart';

Container upperContainer(){
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top:20.0, left: 1.0, right: 1.0,),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                          children: [
                            Positioned(
                              left: 30,
                              top: 40,
                              child: Container(
                                width: 300,
                                height: 250,
                                color: Colors.black,
                                child: Stack(
                                  children: [
                                    Positioned( left: 10,
                                      child: winnerContainer(2,'assets/images/GoldenCrown.png','Hassan'),),
                                    Positioned(
                                      left: 190,
                                      child: winnerContainer(3, 'assets/images/SilverCrown.png','Amman')),
                                  ],
                                ),
                              ),
                              ),
                            Positioned(
                              left: 130,
                              top: 20,
                              child: winnerContainer(1, 'assets/images/DiamondCrown.png','Player')
                            ),
                          ],
                        ),
            ),
          ],
        ),
      ),
    );
}