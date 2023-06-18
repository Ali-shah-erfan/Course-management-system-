import 'dart:math';
import 'package:flutter/material.dart';

class CircularPainter extends CustomPainter {
  final Color backgrounColor;
  final Color linerColor;
  final double width;

  CircularPainter({required this.backgrounColor,required this.linerColor,required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    
    Paint backgroundLine = Paint()
      ..color = backgrounColor
      ..strokeCap = StrokeCap.round
      ..style =  PaintingStyle.stroke
      ..strokeWidth = width;

    Paint completeLine = Paint()
      ..color = linerColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
      Offset cen = Offset(size.width/2, size.height/2);
      // double seepAngle = 2 * pi;
      // canvas.drawCircle(cen, radius, backgroundLine);
      // canvas.drawArc(Rect.fromCircle(center: cen, radius: radius), -pi / 2, sweepAngle, false, completeLine);
      

  }
    
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  }
  
