import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyS',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(),
      theme: ThemeData(),
    );
  }
}
