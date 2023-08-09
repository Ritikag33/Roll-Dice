import 'dart:math';
import 'package:flutter/material.dart';

 final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  //returns a state object
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _ means this class will be private
class _DiceRollerState extends State<DiceRoller>{
 
  var currentDiceRoll=2;

  void rollDice() {
    
    //Getting Flutter to re-execute the build
    setState(() {
      currentDiceRoll= randomizer.nextInt(6) +1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            //Adding padding
            const SizedBox(height:20), //has fixed width & height
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(top: 20,),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice'))
          ],
        );
  }
}