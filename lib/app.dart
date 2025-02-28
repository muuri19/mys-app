import 'package:flutter/material.dart';
import 'package:mys/features/main/models/certificate_model.dart';
import 'package:mys/features/main/screens/detail_page.dart';
import 'package:mys/features/main/screens/main_page.dart';
import 'package:mys/features/settings/screens/setting_page.dart';
import 'package:mys/utils/theme/theme.dart';
import 'package:provider/provider.dart';

import 'features/main/screens/pdf_view_page.dart';
import 'features/settings/providers/theme_provider.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My S',
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName: (context) => MainPage(),
        PdfViewPage.routeName: (context) => PdfViewPage(),
        SettingsPage.routeName: (context) => const SettingsPage(),
        DetailPage.routeName: (context) => DetailPage(
              certificate: ModalRoute.of(context)!.settings.arguments
                  as CertificateModel,
            ),
      },
    );
  }
}
