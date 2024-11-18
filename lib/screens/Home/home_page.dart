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
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/boy.png"),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  RichText(
                    text: TextSpan(
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
            ],
          ),
        ),
      ),
    );
  }
}
