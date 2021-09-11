import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleView extends StatelessWidget {
  final Widget child;

  final double? size;

  final Color? color;

  final List<BoxShadow>? boxShadow;

  final Border? border;

  final double? opacity;

  CircleView({
    required this.child,
    this.size,
    this.color = Colors.transparent,
    this.boxShadow,
    this.border,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border,
        boxShadow: boxShadow,
      ),
    );
  }

  factory CircleView.joystickCircle(double size, Color color) => CircleView(
    size: size,
    color: color,
    border: Border.all(
      color: Colors.black45,
      width: 4.0,
      style: BorderStyle.solid,
    ),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 8.0,
        blurRadius: 8.0,
      )
    ],
    child: Container(),
  );

  factory CircleView.joystickInnerCircle(double size, Color color) =>
      CircleView(
        size: size,
        color: color,
        border: Border.all(
          color: Colors.black26,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ], child: Container(),
      );

  factory CircleView.padBackgroundCircle(
      double size, Color backgroundColour, borderColor, Color shadowColor,
      {double? opacity}) =>
      CircleView(
        size: size,
        color: backgroundColour,
        opacity: opacity,
        border: Border.all(
          color: borderColor,
          width: 4.0,
          style: BorderStyle.solid,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ],
        child: Container(),
      );

  factory CircleView.padButtonCircle(
      double size,
      Color? color,
      Widget child,) =>
      CircleView(
        size: size,
        color: color,
        child: child,
        border: Border.all(
          color: Colors.black26,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 8.0,
            blurRadius: 8.0,
          )
        ],
      );
}