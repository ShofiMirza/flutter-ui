import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectQuantityDetail extends StatefulWidget {
  const SelectQuantityDetail({super.key});

  @override
  State<SelectQuantityDetail> createState() => _SelectQuantityDetailState();
}

class _SelectQuantityDetailState extends State<SelectQuantityDetail> {
  int _counter = 1; // Menyimpan jumlah yang dipilih

  // Fungsi untuk menambah jumlah
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengurangi jumlah
  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {  // Jangan izinkan jumlah menjadi kurang dari 1
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyusun elemen secara horizontal
      crossAxisAlignment: CrossAxisAlignment.start,  // Menyusun elemen berdasarkan bagian atas
      children: [
        // Teks "Select Quantity"
        Text(
          "Select Quantity",
          // style: GoogleFonts.poppins(
          //   fontSize: 16,
          //   fontWeight: FontWeight.w400,
          //   color: const Color(0xFF7A8D9C),  // Warna teks abu-abu
          // ),
        ),
        Row(
          children: [
            // Tombol untuk mengurangi jumlah
            GestureDetector(
              onTap: _decrementCounter, // Ketika tombol ini ditekan, jumlah dikurangi
              child: Container(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFEAEBEC),
                  ),
                  color: const Color(0xFFFCFCFC),  // Warna latar belakang tombol
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      topLeft: Radius.circular(18)),
                ),
                child: SvgPicture.asset("assets/icons/substract.svg"), // Ikon untuk pengurangan
              ),
            ),
            // Tampilan jumlah yang dipilih
            Container(
              width: 40,
              height: 32,
              color: const Color(0xFFE3E3E3),  // Warna latar belakang untuk jumlah
              child: Center(
                child: Text(
                  _counter.toString(),  // Menampilkan jumlah yang dipilih
                  // style: GoogleFonts.poppins(
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w400,
                  //   color: const Color(0xFF4A4543),  // Warna teks
                  // ),
                ),
              ),
            ),
            // Tombol untuk menambah jumlah
            GestureDetector(
              onTap: _incrementCounter, // Ketika tombol ini ditekan, jumlah ditambah
              child: Container(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFEAEBEC),
                  ),
                  color: const Color(0xFFFCFCFC),  // Warna latar belakang tombol
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                ),
                child: SvgPicture.asset("assets/icons/add.svg"),  // Ikon untuk penambahan
              ),
            ),
          ],
        ),
      ],
    );
  }
}
