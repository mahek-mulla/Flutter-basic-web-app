
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

assetapp() {
  final fireflies = AssetsAudioPlayer();
  fireflies.open(Audio('assets/audio/Fireflies.mp3'),
      autoStart: false, showNotification: true);

  final bboys = AssetsAudioPlayer();
  fireflies.open(Audio('assets/audio/I_want_it_that_way.mp3'),
      autoStart: false, showNotification: true);

  final seeyou = AssetsAudioPlayer();
  fireflies.open(Audio('assets/audio/See_You_Again.mp3'),
      autoStart: false, showNotification: true);

  final letme = AssetsAudioPlayer();
  fireflies.open(Audio('assets/audio/Let_Me_Down_Slowly.mp3'),
      autoStart: false, showNotification: true);

  var appbar = AppBar(
    centerTitle: true,
    leading: Icon(Icons.music_note),
    title: Text(
      "Boom Box",
      textAlign: TextAlign.center,
      style: TextStyle(fontStyle: FontStyle.italic),
    ),
    backgroundColor: Colors.black,
  );

  var music = Container(
      child: Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          "Groove to Music",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      Container(
          margin: EdgeInsets.only(top:50, left: 20, bottom: 50),
          padding: EdgeInsets.only(bottom:40),
          child: Column(
            children: <Widget>[
              Row(
                
                children: <Widget>[
                  Text(
                    "Fireflies",
                    style: TextStyle(color: Colors.black, ),
                  ),
                  IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: Colors.black,
                      onPressed: () => fireflies.play()),
                  IconButton(
                      icon: Icon(Icons.pause),
                      color: Colors.black,
                      onPressed: () => fireflies.pause()),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "I want it that way",
                    style: TextStyle(color: Colors.black, ),
                  ),
                  IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: Colors.black,
                      onPressed: () => bboys.play()),
                  IconButton(
                      icon: Icon(Icons.pause),
                      color: Colors.black,
                      onPressed: () => bboys.pause()),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Let me dwn Slowly",
                    style: TextStyle(color: Colors.black),
                  ),
                  IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: Colors.black,
                      onPressed: () => letme.play()),
                  IconButton(
                      icon: Icon(Icons.pause),
                      color: Colors.black,
                      onPressed: () => letme.pause()),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "See You Again",
                    style: TextStyle(color: Colors.black),
                  ),
                  IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: Colors.black,
                      onPressed: () => seeyou.play()),
                  IconButton(
                      icon: Icon(Icons.pause),
                      color: Colors.black,
                      onPressed: () => seeyou.pause()),
                ],
              ),
            ],
          )),
    ],
  ));

  var myhome = Scaffold(
    appBar: appbar,
    backgroundColor: Colors.white,
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/concert.jpg'), fit: BoxFit.cover),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(30),
            width: double.infinity,
            
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              //backgroundBlendMode: BlendMode.modulate,
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
            ),
            child: music,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(30),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              backgroundBlendMode: BlendMode.modulate,
              border: Border.all(
                color: Colors.amber,
                width: 4,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("HAPPY", style: TextStyle(color : Colors.amber, fontStyle: FontStyle.italic, fontSize: 55),),
                Text("LISTENING",style: TextStyle(color : Colors.amber,fontStyle: FontStyle.italic, fontSize: 45),),
              ],
            ),
            
          ),
        ],
      ),
    ),
  );

  return (MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myhome,
  ));
}
