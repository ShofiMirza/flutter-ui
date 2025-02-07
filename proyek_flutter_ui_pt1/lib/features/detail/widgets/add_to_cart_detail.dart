import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class AddToCartDetail extends StatelessWidget {
  const AddToCartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width, // Membuat tombol selebar layar
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF9A9390), // Warna latar belakang tombol
        ),
        onPressed: () {
          // Aksi ketika tombol ditekan (misalnya menambahkan ke keranjang)
        },
        child: Text(
          "ADD TO CART", // Teks pada tombol
          // style: GoogleFonts.poppins(
          //   fontSize: 12, // Ukuran font
          //   fontWeight: FontWeight.w700, // Ketebalan font
          //   color: const Color(0xFFFFFFFF), // Warna teks putih
          // ),
        ),
      ),
    );
  }
}
