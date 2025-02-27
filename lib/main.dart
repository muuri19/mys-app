import 'package:flutter/material.dart';
import 'package:mys/app.dart';
import 'package:mys/features/settings/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: App(),
    ),
  );
}
