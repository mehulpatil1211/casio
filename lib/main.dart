import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void clickOn(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    clickOn(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.indigo,
                  onPressed: () {
                    clickOn(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    clickOn(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    clickOn(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    clickOn(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    clickOn(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    clickOn(7);
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
