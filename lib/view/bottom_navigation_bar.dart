import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/view/screen_1.dart';
import 'package:test/view/screen_2.dart';
import 'package:test/view/screen_3.dart';
import '../controller/bottom_navigation_provider.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavigationBarProvider>(context);
    final pageController = provider.pageController;
    pageController.addListener(() {
      provider.changeIndex(pageController.page!.round());
    });

    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const PageScrollPhysics(),
        children: const [
          ScreenOne(),
          ScreenTwo(),
          ScreenThree(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.changeIndex(index);
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
