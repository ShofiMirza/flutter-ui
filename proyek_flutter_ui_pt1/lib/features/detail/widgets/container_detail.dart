import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/widgets/add_to_cart_detail.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/widgets/nama_produk_harga_detail.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/widgets/select_color_detail.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/widgets/select_quantity_detail.dart';

class ContainerDetail extends StatefulWidget {
  const ContainerDetail({super.key});

  @override
  State<ContainerDetail> createState() => _ContainerDetailState();
}

class _ContainerDetailState extends State<ContainerDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381, // Tinggi container detail
      width: MediaQuery.of(context).size.width, // Lebar sesuai lebar layar
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF), // Warna latar putih
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), // Radius atas kiri 40
          topRight: Radius.circular(40), // Radius atas kanan 40
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          // Garis strip kecil di tengah
          Container(
            width: 36,
            height: 5,
            color: const Color(0xFFD8D8D8), // Warna abu-abu terang
          ),
          const SizedBox(height: 15),
          // Padding untuk konten di dalam container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24), // Padding kiri dan kanan
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
              children: [
                // Menampilkan nama produk dan harga
                const NamaProdukHargaDetail(),
                const SizedBox(height: 9),
                // Menampilkan icon bintang
                SvgPicture.asset("assets/icons/Score.svg"),
                const SizedBox(height: 21),
                // Menampilkan pilihan warna
                const SelectColorDetail(),
                const SizedBox(height: 19),
                // Menampilkan pilihan kuantitas
                const SelectQuantityDetail(),
                const SizedBox(height: 32),
                // Deskripsi produk
                SizedBox(
                  height: 60,
                  child: Text(
                    "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                    // style: GoogleFonts.poppins(
                    //   fontSize: 12,
                    //   fontWeight: FontWeight.w400,
                    //   color: const Color(0xFFADADAD), // Warna abu-abu untuk teks deskripsi
                    // ),
                  ),
                ),
                const SizedBox(height: 30),
                // Tombol untuk menambahkan ke keranjang
                const AddToCartDetail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
