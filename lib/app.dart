import 'package:advent_of_code/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Advent of Code',
      home: DashboardPage(),
    );
  }
}
