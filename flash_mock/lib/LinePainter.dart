
import 'dart:math';
import 'package:flutter/material.dart';
abstract class Line {}
class SolidLine extends Line {}
class ZigzagLine extends Line {
  final double depth;
  final double angle;

  ZigzagLine({required this.depth, required this.angle});
}
class LinePainter extends CustomPainter {
  final Line line;
  final Paint paintDef;

  const LinePainter({required this.line, required this.paintDef});

  @override
  void paint(Canvas canvas, Size size) {
    if (size == null || paintDef == null || paintDef.strokeWidth < 0.0) return;

    double width = size.width; // always axis is horizontal here

    switch (line.runtimeType) {
      case SolidLine:
        {
          _drawSolidLine(canvas, width, paintDef);
          break;
        }
      case ZigzagLine:
        {
          _drawZigZagLine(
            canvas,
            width,
            paintDef,
            (line as ZigzagLine).depth ?? 8.0,
            (line as ZigzagLine).angle ?? 90,
          );
          break;
        }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  void _drawSolidLine(Canvas canvas, double width, Paint paintDef) {
    double strokeVerticalOverflow = paintDef.strokeWidth / 2;
    double strokeHorizontalOverflow =
    paintDef.strokeCap == StrokeCap.butt ? 0.0 : strokeVerticalOverflow;

    canvas.drawLine(
      Offset(strokeHorizontalOverflow, strokeVerticalOverflow),
      Offset(width - strokeHorizontalOverflow, strokeVerticalOverflow),
      paintDef,
    );
  }

  void _drawZigZagLine(
      Canvas canvas,
      double width,
      Paint paintDef,
      double depth,
      double angle,
      ) {
    // Lets draw a horizontal zigzag line

    if (angle <= 0 || angle >= 180)
      return _drawSolidLine(canvas, width, paintDef);

    double zgWidth = angle == 90.0 ? depth : (depth * tan(angle / 360 * pi));
    double zigZagAperture = zgWidth * 2;
    int zigZagCount = (width / zigZagAperture).floor();

    // zigzag floor point = zigzag height
    // zigzag ceiling point = 0.0

    Path zigzagPath = new Path();
    List<Offset> points = [];

    if (zigZagCount == 0) return _drawSolidLine(canvas, width, paintDef);

    // divide leap length into two equal parts
    // as starting and ending space
    double position = (width % zigZagAperture) / 2;

    points.add(Offset(position, depth / 2));
    points.add(Offset(position += zgWidth / 2, 0.0));
    points.add(Offset(position += zgWidth, depth));

    for (int i = 2; i <= zigZagCount; i++) {
      points.add(Offset(position, depth));
      points.add(Offset(position += zgWidth, 0.0));
      points.add(Offset(position += zgWidth, depth));
    }

    points.add(Offset(position, depth));
    points.add(Offset(position += zgWidth / 2, depth / 2));

    zigzagPath.addPolygon(points, false);
    canvas.drawPath(zigzagPath, paintDef);
  }
}