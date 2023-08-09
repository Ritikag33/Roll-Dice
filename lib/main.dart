import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

//runApp(): Function: Provided by Flutter Framework: Tells which UI elements to display

//void: Return type
//main function gets executed automatically
void main() {
  //Defining a function

  //home arguement: Define which kind of widget should be displayed inside of the app UI
  runApp(
      MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
        ),
      ),
    );
   //Executing("calling") a function
}

