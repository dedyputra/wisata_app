// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wisata_app/screens/Home/widgets/kategori_card.dart';
import 'package:wisata_app/utilities/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    // Mengatur tema aplikasi sesuai dengan mode tampilan
    final ThemeData themeData = ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
    );

    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        backgroundColor: isDark ? Colors.black : Colors.white,
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
                      text: TextSpan(
                        text: "Hello Welcome, ",
                        style: TextStyle(
                          fontFamily: kFontFamily,
                          color: isDark ? Colors.white : kBlackColor,
                        ),
                        children: const [
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
                const SizedBox(
                  height: 15,
                ),
                // Teks judul dengan warna yang berubah sesuai mode tampilan
                Text(
                  "Explore Wisata Sidoarjo",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // SearchBar untuk mencari wisata
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SearchAnchor(
                    builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        hintText: "Silahkan Cari Wisata",
                        controller: controller,
                        padding: const WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search),
                        trailing: <Widget>[
                          Tooltip(
                            message: 'Ubah Mode Tampilan',
                            child: IconButton(
                              isSelected: isDark,
                              onPressed: () {
                                setState(() {
                                  isDark = !isDark;
                                });
                              },
                              icon: const Icon(Icons.wb_sunny_outlined),
                              selectedIcon:
                                  const Icon(Icons.brightness_2_outlined),
                            ),
                          ),
                        ],
                      );
                    },
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'Wisata $index';
                        return ListTile(
                          title: Text(
                            item,
                            style: TextStyle(
                              color: isDark ? Colors.white : Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    },
                  ),
                ),
                // untuk tipe kategori wisata
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Kategori Wisata",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          KategoriCard(
                            press: () {},
                            image: "assets/icons/pantai.png",
                            title: "Pantai",
                            isDark: isDark, // Parameter diteruskan
                          ),
                          KategoriCard(
                            press: () {},
                            image: "assets/icons/taman.png",
                            title: "Taman",
                            isDark: isDark,
                          ),
                          KategoriCard(
                            press: () {},
                            image: "assets/icons/candi.jpg",
                            title: "Candi",
                            isDark: isDark,
                          ),
                          KategoriCard(
                            press: () {},
                            image: "assets/icons/alun_alun.jpg",
                            title: "Alun Alun",
                            isDark: isDark,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Rekomendasi Wisata
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Rekomendasi Wisata",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 350,
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 320,
                              width: 200,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            Image: AssetImage(
                                                "assets/images/AlunAlunSidoarjo.jpg"))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
