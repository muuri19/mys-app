import 'package:flutter/material.dart';
import 'package:mys/features/main/models/certificate_model.dart';
import 'package:mys/features/main/screens/all_certificate.dart';
import 'package:mys/features/main/screens/cv_page.dart';
import 'package:mys/features/main/screens/detail_page.dart';
import 'package:mys/features/main/screens/main_page.dart';
import 'package:mys/features/settings/screens/setting_page.dart';
import 'package:mys/features/splash_screens/screens/splash_screen_page.dart';
import 'package:mys/utils/theme/theme.dart';
import 'package:provider/provider.dart';

import 'features/settings/providers/theme_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyS',
      themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      initialRoute: SplashScreenPage.routeName,
      routes: {
        SplashScreenPage.routeName: (context) => const SplashScreenPage(),
        MainPage.routeName: (context) => MainPage(),
        CvPage.routeName: (context) => const CvPage(),
        SettingsPage.routeName: (context) => const SettingsPage(),
        DetailPage.routeName: (context) => DetailPage(
              certificate: ModalRoute.of(context)!.settings.arguments
                  as CertificateModel,
            ),
        AllCertificate.routeName: (context) => AllCertificate(),
      },
    );
  }
}
