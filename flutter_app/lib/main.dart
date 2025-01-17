import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/intro_screen.dart';
import 'package:flutter_app/list_screen.dart';
import 'package:flutter_app/system_info_screen.dart';
import 'package:flutter_app/wifi_screen.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  API.updateBaseURI();
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final currentThemeMode = useState(ThemeMode.light);

    toggleTheme() {
      if (currentThemeMode.value == ThemeMode.light) {
        currentThemeMode.value = ThemeMode.dark;
      } else {
        currentThemeMode.value = ThemeMode.light;
      }
    }

    final themeIcon = Icon(
      currentThemeMode.value == ThemeMode.light
          ? Icons.sunny
          : Icons.nightlight,
      size: 24.0,
    );

    return MaterialApp(
        themeMode: currentThemeMode.value,
        theme: ThemeData(primarySwatch: Colors.blueGrey)
            .copyWith(textTheme: GoogleFonts.latoTextTheme()),
        darkTheme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.latoTextTheme()
                .apply(bodyColor: Colors.white, displayColor: Colors.white)),
        initialRoute: '/',
        routes: {
          '/': (context) => const IntroScreen(),
          "/list": (context) => const ListScreen(),
          '/info': (context) => const SystemInfoScreen(),
          '/wifi': (context) => const WiFiScreen()
        },
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            floatingActionButton:
                ElevatedButton(onPressed: toggleTheme, child: themeIcon),
            body: child!,
          );
        });
  }
}
