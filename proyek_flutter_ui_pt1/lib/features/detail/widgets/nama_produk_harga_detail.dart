import 'package:flutter/material.dart';

class NamaProdukHargaDetail extends StatelessWidget {
  const NamaProdukHargaDetail({
    super.key,
  });

  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Membuat widget Row yang berisi nama produk dan harga produk,
  /// dengan nama produk berwarna #4A4543 dan berukuran 26,
  /// serta harga produk berwarna #9A9390 dan berukuran 22.
/******  0bbd0633-9a62-4116-9662-7582a48501b0  *******/  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyusun elemen secara merata antara kiri dan kanan
      children: [
        // Nama Produk
        Text(
          "Wooden Coff", // Ganti dengan nama produk dinamis jika diperlukan
          // style: GoogleFonts.poppins(
          //   fontSize: 26,
          //   fontWeight: FontWeight.w400,
          //   color: const Color(0xFF4A4543), // Warna abu-abu gelap
          // ),
        ),
        // Harga Produk
        Text(
          "\$240", // Ganti dengan harga produk dinamis jika diperlukan
          // style: GoogleFonts.poppins(
          //   fontSize: 22,
          //   fontWeight: FontWeight.w500,
          //   color: const Color(0xFF9A9390), // Warna abu-abu terang untuk harga
          // ),
        ),
      ],
    );
  }
}
