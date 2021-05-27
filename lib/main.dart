import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hoopooh_flutter/future/presentation/pages/login_screens/create_acount_screen.dart';
import 'package:hoopooh_flutter/future/presentation/pages/login_screens/login_screen.dart';
import 'package:hoopooh_flutter/future/presentation/pages/splash_screen/splash_screen.dart';
import 'package:hoopooh_flutter/theme.dart';

import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: light,
        darkTheme: dark,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

