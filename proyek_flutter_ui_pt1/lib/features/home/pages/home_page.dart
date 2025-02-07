import 'package:flutter/material.dart';
import 'package:proyek_flutter_ui_pt1/features/detail/pages/detail_page.dart';
import 'package:proyek_flutter_ui_pt1/features/home/widgets/app_bar_home.dart';
import 'package:proyek_flutter_ui_pt1/features/home/widgets/bottom_navigation_bar_home.dart';
import 'package:proyek_flutter_ui_pt1/features/home/widgets/category_home.dart';
import 'package:proyek_flutter_ui_pt1/features/home/widgets/recommended_furniture_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DetailPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Categories',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF4A4543),
                    ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: CategoryHome(),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recommended Furnitures',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF4A4543),
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RecommendedFurnituresHome(
                  onTapItem: _navigateToDetail,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbarHome(),
    );
  }
}
