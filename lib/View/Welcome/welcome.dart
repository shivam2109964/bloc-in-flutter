import 'package:blocc/Model/AppFonts/fonts.dart';
import 'package:blocc/Model/Color/colors.dart';
import 'package:blocc/Model/Color/polygon.dart';
import 'package:blocc/Model/Color/polygon1.dart';
import 'package:blocc/View/Home/home.dart';
import 'package:flutter/material.dart';

import '../../Model/Color/polygonShadow.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlocColor.baseColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "Bloc",
              style: AppFonts.montserratTextStyle(
                fontSize: 20,
                color: BlocColor.headlineFontColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Business Logic Component",
              style: AppFonts.montserratTextStyle(
                fontSize: 20,
                color: BlocColor.paragarhColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Unlock the Power of Bloc",
              style: AppFonts.montserratTextStyle(
                fontSize: 15,
                color: BlocColor.paragarhColor,
              ),
            ),
            Text(
              "Build Better Apps!",
              style: AppFonts.montserratTextStyle(
                fontSize: 15,
                color: BlocColor.paragarhColor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: BlocColor.baseColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: BlocColor.shadowColor,
                      offset: Offset(6, 10),
                      blurRadius: 7,
                    ),
                    BoxShadow(
                      color: BlocColor.highlightColor,
                      offset: Offset(-6, -10),
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Start Now",
                    style: AppFonts.montserratTextStyle(
                      fontSize: 18,
                      color: BlocColor.headlineFontColor,
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
