import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  Expanded buildKey ({int? soundNumber,Color ? color} ){
   return Expanded(
              child: TextButton(
                  onPressed: () {
                    playSound(soundNumber!);
                  },
                  child: Container(
                    color: color!,
                  )),
            );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(soundNumber:1,color:Colors.red),
            buildKey(soundNumber:2,color:Colors.orange),
            buildKey(soundNumber:3,color:Colors.yellow),
            buildKey(soundNumber:4,color:Colors.green),
            buildKey(soundNumber:5,color:Colors.teal),
            buildKey(soundNumber:6,color:Colors.blue),
            buildKey(soundNumber:7,color:Colors.purple),
            
          ],
        )),
      ),
    );
  }
}
