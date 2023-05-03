import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/controller/bottom_navigation_provider.dart';
import 'package:test/view/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationBarProvider(),
      child: const MaterialApp(
        home: BottomNavigationBarScreen(),
      ),
    );
  }
}
