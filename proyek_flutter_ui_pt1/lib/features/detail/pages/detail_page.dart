import 'package:flutter/material.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/widgets/app_bar_detail.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/widgets/container_detail.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar produk besar, posisi di kiri atas
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/furniture/img_product_1.png', // Gambar produk besar
              fit: BoxFit.contain, // Menyesuaikan gambar dengan ruang yang ada
            ),
          ),
          
          // AppBar di posisi top 48 (setelah header bar)
          Positioned(
            top: 48,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const AppBarDetail(), // Widget AppBarDetail yang akan kita buat nanti
            ),
          ),
          
          // ContainerDetail yang akan berada di bawah dan memiliki border-radius
          const Positioned(
            left: 0,
            bottom: 0,
            child: ContainerDetail(), // Widget ContainerDetail yang akan kita buat nanti
          ),
        ],
      ),
    );
  }
}
