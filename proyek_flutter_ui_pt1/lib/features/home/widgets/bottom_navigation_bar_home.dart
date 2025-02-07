import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbarHome extends StatelessWidget {
  const BottomNavbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/star.svg'),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/profile.svg'),
          label: 'Profile',
        ),
      ],
    );
  }
}
