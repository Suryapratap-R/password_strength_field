import 'package:flutter/material.dart';
import 'dart:math';

class CircularProgressPainter extends CustomPainter {
  CircularProgressPainter();  

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
  ..strokeWidth = 4
  ..color = Colors.grey
  ..style = PaintingStyle.stroke;

  Paint progressCircle = Paint()
  ..strokeWidth = 4
  ..color = Colors.redAccent
  ..strokeCap = StrokeCap.round
  ..style = PaintingStyle.stroke;

Offset offset = Offset(size.height/2, size.width/2);
double radius = min(size.height/2, size.width/2) - 3;
    canvas.drawCircle(offset, radius, outerCircle);
  }

  @override
  bool shouldRepaint(CircularProgressPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CircularProgressPainter oldDelegate) => false;
}