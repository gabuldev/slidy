String startAppWidget(String package) => '''
import 'package:flutter/material.dart';
import 'package:${package}/src/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeModule(),
    );
  }
}
  ''';

String startAppWidgetComplete(String package) => '''
import 'package:flutter/material.dart';
import 'package:${package}/src/app/routes.dart';
import 'package:${package}/src/pages/home/home_module.dart';
import 'package:${package}/src/pages/login/login_module.dart';
import 'package:${package}/src/app/styles/theme_style.dart';
import 'package:${package}/src/app/locale/locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: AppTheme().themeData(),
      routes: AppRoutes().routeMain(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const AppLocaleDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt'),
        // const Locale('en'),
      ],
    );
  }
}
  ''';