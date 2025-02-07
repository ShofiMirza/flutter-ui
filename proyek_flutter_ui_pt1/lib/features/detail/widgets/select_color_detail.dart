import 'package:flutter/material.dart';

class SelectColorDetail extends StatefulWidget {
  const SelectColorDetail({super.key});

  @override
  State<SelectColorDetail> createState() => _SelectColorDetailState();
}

class _SelectColorDetailState extends State<SelectColorDetail> {
  // Daftar warna yang tersedia untuk dipilih
  final List<Color> _colors = [
    const Color(0xFF9A9390),  // Warna pertama
    const Color(0xFFEEA427),  // Warna kedua
    const Color(0xFFE3E3E3),  // Warna ketiga
    const Color(0xFF80450A),  // Warna keempat
  ];

  int _selectedColor = 0; // Indeks warna yang dipilih

  // Fungsi untuk mengubah warna yang dipilih
  void onTapColor(int index) {
    setState(() {
      _selectedColor = index;  // Update warna yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Teks untuk label "Choose a color"
        Text(
          "Choose a color",
          // style: GoogleFonts.poppins(
          //   fontSize: 16,
          //   fontWeight: FontWeight.w400,
          //   color: const Color(0xFF7A8D9C), // Warna teks abu-abu
          // ),
        ),
        // Baris warna pilihan
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: _colors.asMap().entries.map((entry) {
            int index = entry.key; // Indeks warna
            Color color = entry.value; // Nilai warna

            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                onTap: () => onTapColor(index), // Ketika warna dipilih
                child: _selectedColor == index
                    // Jika warna ini dipilih, tampilkan lingkaran dengan lingkaran putih di dalamnya
                    ? CircleAvatar(
                        radius: 14,
                        backgroundColor: color,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: color,
                          ),
                        ),
                      )
                    // Jika tidak dipilih, hanya lingkaran warna
                    : CircleAvatar(
                        radius: 10,
                        backgroundColor: color,
                      ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
