import 'package:flutter/material.dart';
import 'package:wisata_app/screens/DetailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: 'Objek Wisata Sidoarjo',
      home: DetailScreen(),
    );
  }
}
