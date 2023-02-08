import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceStateFull(),
      ),
    ),
  );
}



class DiceStateFull extends StatefulWidget {

  @override
  State<DiceStateFull> createState() => _DiceStateFullState();
}

class _DiceStateFullState extends State<DiceStateFull>  {
  @override
  int LeftDiceNumber=1 ;
  int  RightDiceNumber=6;
  Widget build(BuildContext context) {

    return Center(

      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
                onPressed:(){
                setState(() {
                  LeftDiceNumber= Random().nextInt(6)+1;
                });
                } ,
                child: Image.asset(
                  'images/dice$LeftDiceNumber.png',
                )),
          ),
          Expanded(

            child: MaterialButton(
                onPressed:(){
                  setState(() {
                    RightDiceNumber = Random().nextInt(6)+1;
                  });
                } ,
                child: Image.asset('images/dice$RightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
