import 'package:blocc/Model/AppFonts/fonts.dart';
import 'package:blocc/Model/Color/colors.dart';
import 'package:flutter/material.dart';

class AsyncPage extends StatelessWidget {
  const AsyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Async Programming",
          style: AppFonts.montserratTextStyle(
              fontSize: 20,
              color: BlocColor.headlineFontColor,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
    );
  }
}
