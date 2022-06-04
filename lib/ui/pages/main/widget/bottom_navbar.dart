import 'package:flutter/material.dart';

class BottomNavigationBarMw extends StatefulWidget {
  final PageController pageController;
  static final lastIndex = 3;

  BottomNavigationBarMw({required this.pageController});

  @override
  State<BottomNavigationBarMw> createState() => _BottomNavigationBarMwState();
}

class _BottomNavigationBarMwState extends State<BottomNavigationBarMw> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        widget.pageController.jumpToPage(index);
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.api), label: "Lorem"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp), label: "Lorem"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp), label: "Lorem"),
      ],
    );
  }
}
