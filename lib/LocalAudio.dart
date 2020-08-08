import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class LocalAudio extends StatelessWidget {
  AudioPlayer advancedplayer;
  @override
  Widget build(BuildContext context) {
    return (Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: <Widget>[
          Container(
            width: 300,
            height: 200,
            padding: EdgeInsets.only(top: 20),
            child: Card(
              child: Image.asset(
                'assets/images/duniyaa.jpg',
                fit: BoxFit.fill,
              ),
              shape: Border.all(color: Colors.amber, width: 3),
              color: Colors.blueGrey,
              shadowColor: Colors.red,
              elevation: 10,
            ),
          ),
          Container(
              width: 300,
              height: 100,
              padding: EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.purple,
                      child: Card(
                          child: Text(
                            'Play',
                            style: TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          color: Colors.amber),
                      onPressed: () async {
                        advancedplayer = await AudioCache().loop('duniyaa.mp3');
                      },
                      elevation: 10,
                    ),
                    RaisedButton(
                      color: Colors.purple,
                      child: Card(
                        child: Text(
                          'Pause',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic),
                        ),
                        color: Colors.amber,
                      ),
                      onPressed: () async {
                        advancedplayer.pause();
                      },
                      elevation: 10,
                    ),
                    RaisedButton(
                      color: Colors.purple,
                      child: Card(
                          child: Text('Stop',
                              style: TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic)),
                          color: Colors.amber),
                      onPressed: () async {
                        advancedplayer.stop();
                      },
                      elevation: 10,
                    )
                  ])),
          Container(
            width: 300,
            height: 180,
            child: Card(
              child: Image.asset(
                'assets/images/kauntujhe.jpg',
                fit: BoxFit.fill,
              ),
              shape: Border.all(color: Colors.amber, width: 3),
              color: Colors.blueGrey,
              shadowColor: Colors.red,
              elevation: 10,
            ),
          ),
          Container(
              width: 300,
              height: 100,
              padding: EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.purple,
                      child: Card(
                          child: Text(
                            'Play',
                            style: TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          color: Colors.amber),
                      onPressed: () async {
                        advancedplayer =
                            await AudioCache().loop('kauntujhe.mp3');
                      },
                      elevation: 10,
                    ),
                    RaisedButton(
                      color: Colors.purple,
                      child: Card(
                        child: Text(
                          'Pause',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic),
                        ),
                        color: Colors.amber,
                      ),
                      onPressed: () async {
                        advancedplayer.pause();
                      },
                      elevation: 10,
                    ),
                    RaisedButton(
                      color: Colors.purple,
                      child: Card(
                          child: Text('Stop',
                              style: TextStyle(
                                  fontSize: 20, fontStyle: FontStyle.italic)),
                          color: Colors.amber),
                      onPressed: () async {
                        advancedplayer.stop();
                      },
                      elevation: 10,
                    )
                  ])),
        ])));
  }
}
