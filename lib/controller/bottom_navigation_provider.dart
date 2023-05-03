// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
