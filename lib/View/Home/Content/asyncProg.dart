import 'package:blocc/Model/AppFonts/fonts.dart';
import 'package:blocc/Model/Color/colors.dart';
import 'package:flutter/material.dart';

class AsyncProg extends StatelessWidget {
  const AsyncProg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: BlocColor.baseColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: BlocColor.shadowColor,
            blurRadius: 8,
            offset: Offset(6, 8),
          ),
          BoxShadow(
            color: BlocColor.highlightColor,
            blurRadius: 12,
            offset: Offset(-6, -8),
          ),
        ],
      ),
      child: Center(
        child: Text(
          "Async Programming",
          style: AppFonts.poppinsTextStyle(
            fontSize: 20,
            color: BlocColor.headlineFontColor,
          ),
        ),
      ),
    );
  }
}
