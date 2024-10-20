import 'package:blocc/Model/AppFonts/fonts.dart';
import 'package:blocc/Model/Color/colors.dart';
import 'package:blocc/View/Home/Content/contentHome.dart';
import 'package:blocc/View_Model/bottomNav/botton_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlocColor.baseColor,
      appBar: AppBar(
        backgroundColor: BlocColor.baseColor,
        leading: const SizedBox(),
        title: Text(
          "Bloc",
          style: AppFonts.montserratTextStyle(
            fontSize: 20,
            color: BlocColor.headlineFontColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Divider(
            color: BlocColor.headlineFontColor,
            indent: MediaQuery.of(context).size.width * 0.1,
            endIndent: MediaQuery.of(context).size.width * 0.1,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<BottonNavBloc, int>(
        builder: (context, index) {
          switch (index) {
            case 0:
              return const Center(
                child: ContentHome(),
              );
            case 1:
              return const Center(
                child: Text("Star"),
              );
            case 2:
              return const Center(
                child: Text("Profile"),
              );
          }
          return Container();
        },
      ),
      bottomNavigationBar: BlocBuilder<BottonNavBloc, int>(
        builder: (context, index) {
          return NavigationBar(
            onDestinationSelected: (index) {
              BlocProvider.of<BottonNavBloc>(context).add(
                BottonNavEvent.values[index],
              );
            },
            selectedIndex: index,
            backgroundColor: BlocColor.baseColor,
            elevation: 10,
            shadowColor: Colors.black12,
            indicatorColor: BlocColor.paragarhColor.withOpacity(0.2),
            animationDuration: const Duration(milliseconds: 600),
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: const [
              NavigationDestination(
                icon: Image(
                  image: AssetImage(
                    "assets/home.png",
                  ),
                  height: 24,
                ),
                label: "Home",
                enabled: true,
              ),
              NavigationDestination(
                icon: Image(
                  image: AssetImage(
                    "assets/Vector.png",
                  ),
                  height: 20,
                ),
                label: "Star",
                enabled: true,
              ),
              NavigationDestination(
                icon: Image(
                  image: AssetImage(
                    "assets/prof.png",
                  ),
                  height: 20,
                ),
                label: "Profile",
                enabled: true,
              ),
            ],
          );
        },
      ),
    );
  }
}
