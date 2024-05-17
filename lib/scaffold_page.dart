import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class ScaffoldPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldPage({
    super.key,
    required this.navigationShell,
  });

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 0;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  List<BarItem> tabs = [
    BarItem(
      icon: Icons.home,
      title: "HOME",
    ),
    BarItem(
      icon: Icons.search,
      title: "FIND",
    ),
    BarItem(
      icon: Icons.person,
      title: "PROFILE",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.navigationShell),
      bottomNavigationBar: SlidingClippedNavBar(
        activeColor: Colors.black,
        barItems: tabs,
        selectedIndex: _selectedIndex,
        onButtonPressed: (value) {
          setState(() {
            _selectedIndex = value;
          });
          _goBranch(_selectedIndex);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomBottomNavigationBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  CustomBottomNavigationBarItem({
    required this.initialLocation,
    required super.icon,
    super.label,
  });
}
