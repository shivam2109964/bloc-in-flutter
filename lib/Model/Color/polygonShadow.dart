import 'package:bloc/Model/Color/colors.dart';
import 'package:flutter/material.dart';

class PolygonWithShadow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    double centerX = width / 2;
    double centerY = height / 2;

    // Define shadow paint
    Paint shadowPaint = Paint()
      ..color = BlocColor.shadowColor
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(
          BlurStyle.normal, 5); // Creates a soft shadow effect

    // Define shadow paint
    Paint shadowPaint1 = Paint()
      ..color = BlocColor.highlightColor
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(
          BlurStyle.normal, 5); // Creates a soft shadow effect

    // Define polygon paint
    Paint polygonPaint = Paint()
      ..color = BlocColor.baseColor
      ..style = PaintingStyle.fill;

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

    // Draw the shadow slightly offset from the polygon
    canvas.save();
    canvas.translate(8, 10); // Offset shadow downwards
    canvas.drawPath(hexagonPath, shadowPaint); // Draw shadow
    canvas.restore();

    // Draw the actual polygon on top
    canvas.drawPath(hexagonPath, polygonPaint);

    // Draw the shadow slightly offset from the polygon
    canvas.save();
    canvas.translate(-8, -10); // Offset shadow downwards
    canvas.drawPath(hexagonPath, shadowPaint1); // Draw shadow
    canvas.restore();

    // Draw the actual polygon on top
    canvas.drawPath(hexagonPath, polygonPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
