import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MemePage());
}

class MemePage extends StatelessWidget {
  final player = AudioCache();

  void soundPlayer(int value) {
    player.play('audio/$value.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: MaterialButton(
          color: Colors.grey[850],
          child: Text(
            'STOP',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            player.clearCache();
          },
        ),
        appBar: AppBar(
          title: Text('Press it !!'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(1);
                      },
                      child: Image.asset('assets/images/1.png'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(2);
                      },
                      child: Image.asset('assets/images/2.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.0,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(3);
                      },
                      child: Image.asset('assets/images/3.png'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(4);
                      },
                      child: Image.asset('assets/images/4.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.0,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(5);
                      },
                      child: Image.asset('assets/images/5.png'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(6);
                      },
                      child: Image.asset('assets/images/6.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.0,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(7);
                      },
                      child: Image.asset('assets/images/7.png'),
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () {
                        soundPlayer(8);
                      },
                      child: Image.asset('assets/images/8.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
