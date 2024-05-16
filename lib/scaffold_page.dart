import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldPage extends StatefulWidget {
  final String location;
  final Widget child;

  const ScaffoldPage({super.key, required this.child, required this.location});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  int _currentIndex = 0;

  List<CustomBottomNavigationBarItem> tabs = [
    CustomBottomNavigationBarItem(
      icon: const Icon(Icons.home),
      label: "HOME",
      initialLocation: '/home',
    ),
    CustomBottomNavigationBarItem(
        icon: const Icon(Icons.search),
        label: "FIND",
        initialLocation: '/find'),
    CustomBottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: "PROFILE",
        initialLocation: '/profile'),
  ];

  void _changeTabs(BuildContext context, int index) {
    if (index == _currentIndex) return;

    GoRouter router = GoRouter.of(context);
    String location = tabs[index].initialLocation;

    setState(() {
      _currentIndex = index;
    });

    if (index == 3) {
      context.push('/');
    } else {
      router.go(location);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.child),
      bottomNavigationBar: BottomNavigationBar(
        items: tabs,
        currentIndex: widget.location == '/home'
            ? 0
            : widget.location == '/find'
                ? 1
                : widget.location == '/profile'
                    ? 2
                    : 3,
        onTap: (value) {
          _changeTabs(context, value);
        },
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
