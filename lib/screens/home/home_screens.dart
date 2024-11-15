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

          SafeArea(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    // Judul aplikasi
                    const Text(
                      "Welcome to Wisata Sidoarjo Jatim",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Caption HomePage
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Jelajahi keindahan Sidoarjo, Jawa Timur! "
                        "Temukan destinasi wisata menarik, "
                        "dan pengalaman tak terlupakan hanya dalam satu aplikasi.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: kFontFamily,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Tombol Get Started Login
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/started.png",
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Get Started",
                            style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
