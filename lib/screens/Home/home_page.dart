import 'package:flutter/material.dart';
import 'package:wisata_app/utilities/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              // Halaman App Bar
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/boy.png"),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "Hello Welcome, ",
                      style: TextStyle(
                          fontFamily: kFontFamily, color: kBlackColor),
                      children: [
                        TextSpan(
                          text: "Dedy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Search untuk mencari wisata
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Explore Wisata Sidoarjo",
                style: TextStyle(
                    fontFamily: kFontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Silahkan Cari Wisata",
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
