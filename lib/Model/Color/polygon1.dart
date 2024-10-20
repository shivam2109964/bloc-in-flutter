import 'package:flutter/material.dart';

class PolygonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double centerX = width / 2;
    double centerY = height / 2;

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
    return hexagonPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
