import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mys/app.dart';
import 'package:mys/features/settings/providers/theme_provider.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: App(),
    ),
  );
}
