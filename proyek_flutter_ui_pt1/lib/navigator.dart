import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "Chart",
      "icon": Icons.shopping_cart,
    },
    {
      "title": "Favorites",
      "icon": Icons.star_border,
    },
    {
      "title": "Account",
      "icon": Icons.person,
    },
  ];

  int _selectedItem = 0;

  String _text = "Home";

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
      _text = menuItems[index]["title"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        backgroundColor: Color(0xFF9A9390),
      ),
      body: Center(
        child: Text(
          'Kamu klik: $_text',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItems
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item["icon"]),
                label: item["title"],
                activeIcon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Icon(item["icon"]),
                ),
              ),
            )
            .toList(),
        currentIndex: _selectedItem,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blue[100],
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                accountName: const Text(
                  'Khanif Zyen',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "khanif.zyen@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: const CircleAvatar(
                  child: FlutterLogo(size: 50),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}