
import 'package:flutter/material.dart';

ClipOval profileAvatarImage(){
  return ClipOval(
    child: Transform.scale(
      scale: 1.2, // increase the scale factor to zoom in
      child: Image.asset(
        'assets/images/profile.png',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Container avatarcontainer(double w, double h, Color color){
  return Container(
    width: w,
  height: h,
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: color,
        blurRadius: 10.0,
      )
    ],
    shape: BoxShape.circle, // use BoxShape.circle to make a circular container
    color: Colors.grey[200],
    border: Border.all(
      color: color,
      width: 3,
    ),
  ),
  child: profileAvatarImage(),
  );
}