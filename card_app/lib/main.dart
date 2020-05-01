import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dicee(),
    );
  }
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftD = 1;
  int rightD =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 50,
          centerTitle: true,
          backgroundColor:Colors.teal
          ,title: Text("Dice ROLL",style: TextStyle(fontSize: 20),),),
        backgroundColor: Colors.deepOrangeAccent,
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        leftD = Random().nextInt(6)+1;
                        print(leftD);
                      });
                    },
                    child: Image.asset("image/inverted-dice-$leftD.png")),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightD = Random().nextInt(6)+1;
                      print(rightD);
                    });
                  },
                    child: Image.asset("image/inverted-dice-$rightD.png")),

              )
            ],
          ),
        ));
  }
}
