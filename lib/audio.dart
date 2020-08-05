import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:audioplayers/audio_cache.dart';

myapp() {
  var audioPlayer = AudioPlayer();

  play() async {
    await audioPlayer.play(
        'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3');
  }

  pause() async {
    await audioPlayer.pause();
  }

  resume() async {
    await audioPlayer.resume();
  }

  var bar = AppBar(title: Text("audio player"));
  var widget = Container(
      margin: EdgeInsets.only(left: 60),
      child: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: RaisedButton(
                onPressed: play,
                child: Text("play"),
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: pause,
                child: Text("pause"),
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: resume,
                child: Text("resume"),
              ),
            ),
          ],
        ),
      ));
  var design = Scaffold(
    appBar: bar,
    body: widget,
  );
  var home = MaterialApp(
    home: design,
    debugShowCheckedModeBanner: false,
  );
  return home;
}
