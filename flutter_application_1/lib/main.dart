import 'package:flutter/material.dart';

void main() {
  runApp(Telapp());
}

class Telapp extends StatelessWidget {
  const Telapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 300, height: 100,color: Colors.blue,),
                Container(width: 280,height: 80,color: Colors.red,
                child: Text("Senai", textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, 
                decoration: TextDecoration.none),),
                ), 
              ],
            ),
        
          Container(width: 300,height: 100,color: Colors.red,child: 
          Text("Senai - Mobile",style: TextStyle(fontSize: 30,
          color: Colors.white,
          decoration: TextDecoration.none),
          ),),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 50, height: 50, color: Colors.amber,),
              Container(width: 50, height: 50, color: Colors.white,),
              Container(width: 50, height: 50, color: Colors.grey,),
            ],
          ),
        
          ElevatedButton(
            onPressed:(){
              print("Desenvolvimento Mobile 1");
            }, child: Text("Mensagem")),
        
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 300, height: 100, color: Colors.blue,),
                Container(width: 200, height: 80, color: Colors.red, child: Text("Victor", textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 25,
                ),),),
        
        
              ],
            ),
          ],
        ),
      )
    );
    }
}
    