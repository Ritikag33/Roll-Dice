import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';


//constant data containers
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Building a Custom Widget
//Stateless Widget: adds the data and logic required by Flutter in order to use GradientContainer as a widget
class GradientContainer extends StatelessWidget {
  //Adding a constructor function
   const GradientContainer(
      {required this.colors,
      super.key}); //your key referring to the named arguement called Key in the super class

  GradientContainer.purple({super.key})
      : colors = [Colors.deepPurple, Colors.indigo];

  //List by default are mutable even though they're final
  final List<Color> colors;

  @override
  //Widget: Return value
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        //Defining multiple constructor functions in a given class
        child: DiceRoller()
      ),
    );
  }
}

//Alternatively
// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color1, this.color2,{super.key});

//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(context){
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors:[color1,color2],
//         begin: startAlignment,
//         end: endAlignment,
//          ),
//       ),
//     );
//   }
// }

//Passing value
// GradientContainer(
//   Color.fromARGB(255, 36, 18, 82),
//   Color.fromARGB(255, 21, 7, 45),
// )
