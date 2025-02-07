import 'package:flutter/material.dart';
import 'package:proyek_flutter_ui_pt1/features/home/pages/home_page.dart';  // Mengimpor HomePage yang telah dibuat

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menonaktifkan banner debug
      title: 'Furniture Store', // Nama aplikasi
      theme: ThemeData(
        primarySwatch: Colors.grey, // Warna utama aplikasi
        fontFamily: 'Poppins', // Menggunakan font Poppins secara global
      ),
      home: const HomePage(), // Halaman pertama yang ditampilkan adalah HomePage
    );
  }
}
