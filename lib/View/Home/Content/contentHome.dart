import 'package:blocc/Model/Color/colors.dart';
import 'package:blocc/View/Home/AsyncProgramming/asyncPage.dart';
import 'package:blocc/View/Home/Content/BlocArchi.dart';
import 'package:blocc/View/Home/Content/StateManag.dart';
import 'package:blocc/View/Home/Content/asyncProg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class ContentHome extends StatelessWidget {
  const ContentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AsyncPage(),
              ),
            );
          },
          child: Neumorphic(
            drawSurfaceAboveChild: true,
            style: const NeumorphicStyle(
              shadowDarkColorEmboss: BlocColor.shadowColor,
              shadowLightColorEmboss: BlocColor.highlightColor,
              depth: -10,
              intensity: 0.8,
              shape: NeumorphicShape.convex,
              lightSource: LightSource.topLeft,
              color: BlocColor.baseColor,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.95,
              child: const Center(
                child: AsyncProg(),
              ),
            ),
          ),
        ),
        Neumorphic(
          drawSurfaceAboveChild: true,
          style: const NeumorphicStyle(
            shadowDarkColorEmboss: BlocColor.shadowColor,
            shadowLightColorEmboss: BlocColor.highlightColor,
            depth: -10,
            intensity: 0.8,
            shape: NeumorphicShape.convex,
            lightSource: LightSource.topLeft,
            color: BlocColor.baseColor,
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.95,
            child: const Center(
              child: StateManag(),
            ),
          ),
        ),
        Neumorphic(
          drawSurfaceAboveChild: true,
          style: const NeumorphicStyle(
            shadowDarkColorEmboss: BlocColor.shadowColor,
            shadowLightColorEmboss: BlocColor.highlightColor,
            depth: -10,
            intensity: 0.8,
            shape: NeumorphicShape.convex,
            lightSource: LightSource.topLeft,
            color: BlocColor.baseColor,
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.95,
            child: const Center(
              child: BlocArchi(),
            ),
          ),
        ),
      ],
    );
  }
}
