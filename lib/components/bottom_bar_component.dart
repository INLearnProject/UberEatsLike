import 'package:flutter/material.dart';

class ComponentBottomBar extends StatefulWidget {
  const ComponentBottomBar({Key? key}) : super(key: key);

  @override
  State<ComponentBottomBar> createState() => _ComponentBottomBarState();
}

class _ComponentBottomBarState extends State<ComponentBottomBar> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (itemIndex) => setState(() => selectedIndex = itemIndex),
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        iconSize: 28.0,
        selectedFontSize: 12.0,
        unselectedFontSize: 11.0,
        selectedIconTheme: const IconThemeData(size: 30.0),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.black54),
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search), label: 'Parcourir'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Panier'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt), label: 'Commandes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Compte'),
        ]);
  }
}
