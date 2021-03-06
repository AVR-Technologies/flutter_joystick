import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

void main() {
  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control Pad Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Pad Example'),
      ),
      body: Container(
        child: JoystickView(
          onDirectionChanged: (degree, distance)=>
              print('degree: $degree, distance: $distance'),
        ),
      ),
    );
  }
}