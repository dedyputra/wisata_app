import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo_view/photo_view.dart';
import 'package:wisata_app/models/wisata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// detail Screen App
// ngoding flutter asik
class DetailScreen extends StatelessWidget {
  final Wisata wisata;
  const DetailScreen({super.key, required this.wisata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Image utama Header
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        wisata.imageAsset,
                        width: double.infinity,
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // detail button tombol back
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100]?.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ],
              ),
              // Membuat Info info hehe
              // Atas
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Bagian Atas untuk membuat info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          wisata.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                    // End Bagian Atas

                    // Untuk Membuat Bagian Tengah
                    const SizedBox(
                      height: 16,
                    ),
                    // isi 1
                    Row(
                      children: [
                        const Icon(
                          Icons.place,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            'Lokasi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${wisata.location}'),
                      ],
                    ),
                    // isi 2
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.deepOrange,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            'Di dirikan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${wisata.built}'),
                      ],
                    ),

                    // isi 3
                    Row(
                      children: [
                        const Icon(
                          Icons.house,
                          color: Colors.greenAccent,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const SizedBox(
                          width: 80,
                          child: Text(
                            'Type',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${wisata.type}'),
                      ],
                    ),
                    // Jarak dengan pemisah yang bawah
                    const SizedBox(
                      height: 16,
                    ),
                    Divider(
                      color: Colors.deepPurple.shade200,
                    ),

                    // Untuk Membuat Deskripsi Wisata
                    const Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 17,
                    ),
                    Text(
                      wisata.description,
                    ),
                  ],
                ),
              ),

              // Membuat Galeri Detail yang berisi foto-foto
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        color: Colors.deepPurpleAccent.shade100,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Galeri Wisata',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // Sizedbox dibawah ini untuk membuat Dokumentasi galeri wisata
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: wisata.imageUrls.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.deepOrange.shade100,
                                      width: 2,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: CachedNetworkImage(
                                      imageUrl: wisata.imageUrls[index],
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) => Container(
                                        height: 150,
                                        width: 150,
                                        color: Colors.deepOrange[50],
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text('Dokumentasi Wisata',
                          style:
                              TextStyle(fontSize: 16, color: Colors.black87)),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
