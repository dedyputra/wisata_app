import 'package:flutter/material.dart';
import 'package:wisata_app/utilities/colors.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Menambahkan Image Homepage
          Image.asset(
            "assets/images/sda.jpg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Column(
            children: [
              Text(
                "Welcome to Wisata Sidoarjo Jatim",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: ,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
