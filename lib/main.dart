import 'package:azzkar/screens/home.dart';
import 'package:azzkar/screens/info_screen.dart';
import 'package:azzkar/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:const  [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      supportedLocales: const [
        Locale("ar"),
        Locale("en"),
      ],
      locale: const Locale("ar"),

      
      initialRoute: '/launch',
      routes: {
        '/launch':(context) => const LaunchScreen(),
        '/home':(context) => const Home(),
        '/info':(context) => const Info(),
      },
    );
  }
}
