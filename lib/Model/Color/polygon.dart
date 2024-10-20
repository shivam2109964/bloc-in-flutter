import 'package:flutter/material.dart';

class Polygon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint fillPaint = Paint()..style = PaintingStyle.fill;

    Paint borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 28; // Adjust the border width

    double width = size.width;
    double height = size.height;
    double centerX = width / 2;
    double centerY = height / 2;

    // Create a path for the hexagon
    Path hexagonPath = Path();
    hexagonPath.moveTo(centerX, centerY - height / 2); // Top
    hexagonPath.lineTo(centerX + width / 2, centerY - height / 4); // Top-right
    hexagonPath.lineTo(
        centerX + width / 2, centerY + height / 4); // Bottom-right
    hexagonPath.lineTo(centerX, centerY + height / 2); // Bottom
    hexagonPath.lineTo(
        centerX - width / 2, centerY + height / 4); // Bottom-left
    hexagonPath.lineTo(centerX - width / 2, centerY - height / 4); // Top-left
    hexagonPath.close();

    // Draw the hexagon border
    canvas.drawPath(hexagonPath, borderPaint);

    // Draw inner light blue side
    Path lightBlueSide = Path();
    lightBlueSide.moveTo(centerX, centerY - height / 2); // Top
    lightBlueSide.lineTo(centerX - width / 2, centerY - height / 4); // Top-left
    lightBlueSide.lineTo(
        centerX - width / 2, centerY + height / 4); // Bottom-left
    lightBlueSide.lineTo(centerX, centerY + height / 2); // Bottom
    lightBlueSide.close();

    fillPaint.color = const Color(0xFF82EDDF);
    canvas.drawPath(lightBlueSide, fillPaint);

    // Draw inner teal side
    Path tealSide = Path();
    tealSide.moveTo(centerX, centerY - height / 2); // Top
    tealSide.lineTo(centerX + width / 2, centerY - height / 4); // Top-right
    tealSide.lineTo(centerX + width / 2, centerY + height / 4); // Bottom-right
    tealSide.lineTo(centerX, centerY + height / 2); // Bottom
    tealSide.close();

    fillPaint.color = const Color(0xFF00D3B9);
    canvas.drawPath(tealSide, fillPaint);

    // Draw the top blue side
    Path blueSide = Path();
    blueSide.moveTo(centerX, centerY - height / 2); // Top
    blueSide.lineTo(centerX + width / 2, centerY - height / 4); // Top-right
    blueSide.lineTo(centerX, centerY); // Center
    blueSide.lineTo(centerX - width / 2, centerY - height / 4); // Top-left
    blueSide.close();

    fillPaint.color = const Color(0xFF0084C1);
    canvas.drawPath(blueSide, fillPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
