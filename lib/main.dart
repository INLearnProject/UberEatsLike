import 'package:flutter/material.dart';

import 'screens/screens.dart';

import 'theme/main_theme.dart';

void main() => runApp(const UberEatsLike());

class UberEatsLike extends StatelessWidget {
  const UberEatsLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: mainTheme,
    );
  }
}
