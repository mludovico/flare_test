import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            height: 200,
            width: 200,
            child: FlareActor(
              "assets/gears.flr",
              animation: "spin",
              isPaused: false,
            ),
        ),
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>Home())
      );
    });
  }


}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Flutter + Flare",
            style: TextStyle(
              fontSize: 30.0
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 150,
            width: 150,
            child: FlareActor(
              "assets/PulsingHeart.flr",
              animation: "pulse",
            ),
          )
        ],
      ),
    );
  }
}
