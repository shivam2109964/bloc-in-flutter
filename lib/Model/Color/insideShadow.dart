import 'package:blocc/Model/Color/colors.dart';
import 'package:flutter/material.dart';

class PolygonWithInnerShadow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    double centerX = width / 2;
    double centerY = height / 2;

    // Define shadow paint for the inner shadow (darker side)
    Paint innerShadowPaint = Paint()
      ..color = BlocColor.shadowColor
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(
          BlurStyle.normal, 0); // Creates a soft shadow effect

    // Define highlight paint for the inner shadow (lighter side)
    Paint innerHighlightPaint = Paint()
      ..color = BlocColor.highlightColor
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(
          BlurStyle.normal, 0); // Creates a soft shadow effect

    // Define polygon paint (main surface)
    Paint polygonPaint = Paint()
      ..color = Colors.white
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

    // Clip the canvas to the shape of the polygon
    canvas.clipPath(hexagonPath);

    // Draw the inner shadow (dark side) by translating the shape slightly
    canvas.save();
    canvas.translate(8, 8); // Slight offset for inner shadow
    canvas.drawPath(hexagonPath, innerShadowPaint);
    canvas.restore();

    // Draw the inner highlight (light side) by translating in the opposite direction
    canvas.save();
    canvas.translate(-8, -8); // Slight offset for inner highlight
    canvas.drawPath(hexagonPath, innerHighlightPaint);
    canvas.restore();

    // Draw the main polygon surface on top
    canvas.drawPath(hexagonPath, polygonPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
