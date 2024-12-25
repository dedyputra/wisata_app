// class Kategori card widget
import 'package:flutter/material.dart';
import 'package:wisata_app/utilities/colors.dart';

class KategoriCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;
  final bool isDark;

  const KategoriCard({
    super.key,
    required this.image,
    required this.press,
    required this.title,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color:
                  isDark ? Colors.grey[850] : kWhiteColor, // Background dinamis
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color:
                          isDark ? Colors.white : Colors.black, // Logika warna
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
