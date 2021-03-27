import 'package:flutter/material.dart';
import 'dart:math';

class DiceeState extends StatefulWidget{

  @override
  _Dicee createState()=>_Dicee();

}

 class _Dicee extends State<DiceeState>{

     int leftDiceeNumber=1;
     int rightDiceeNumber=3;

   @override
  Widget build(BuildContext context) 
  {
    
   void rollingDicee()
   {
    leftDiceeNumber=Random().nextInt(6)+1;
    print("leftDiceeNumber$leftDiceeNumber");
    rightDiceeNumber=Random().nextInt(6)+1;
    print("rightDiceeNumber$rightDiceeNumber");
   }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar:AppBar(title:Text("Dicee"),centerTitle:true,backgroundColor: Colors.red[400],),
        body:SafeArea(child: 
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Expanded(child: FlatButton(
                onPressed: (){
                  setState((){
                    rollingDicee();
                  });
                  }
                ,child: Image.asset("images/dice$leftDiceeNumber.png"))),
              Expanded(child: FlatButton(
                onPressed: (){
                  setState(() {
                    rollingDicee();
                  });
                }
                ,child: Image.asset("images/dice$rightDiceeNumber.png")))
            ],),
          )
        ),
      ),
    );
  }
 }
