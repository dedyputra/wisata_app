import 'package:flutter/material.dart';
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
                      "Category",
                      style: TextStyle(
                        fontFamily: kFontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(),
                      ],
                    ),
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
