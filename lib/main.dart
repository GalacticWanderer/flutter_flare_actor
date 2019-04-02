import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), //theme is dark so the animation is visible
      home: MyHomePage(),
    );
  }
}

//using flare actor to display flare animation
Widget buildAnimation(){
  return FlareActor("assets/Trim.flr",
    fit: BoxFit.cover,
    alignment: Alignment.center,
    animation: "Untitled", //the name of the animation
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flare animation"),),
      body: buildAnimation(),
    );
  }
}
