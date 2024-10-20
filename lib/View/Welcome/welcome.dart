import 'package:bloc/Model/Color/colors.dart';
import 'package:bloc/Model/Color/polygon.dart';
import 'package:bloc/Model/Color/polygon1.dart';
import 'package:bloc/Model/Color/polygonShadow.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlocColor.baseColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: PolygonWithShadow(),
              child: ClipPath(
                clipper: PolygonClipper(),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Center(
                    // Align the CustomPaint in the center
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: CustomPaint(
                        painter: Polygon(), // Your custom painter
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
