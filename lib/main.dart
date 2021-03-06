import 'package:flutter/material.dart';
import 'package:task2/screens/screen2.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar" , "AE")],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      home: ReserveCourse(),
    );
  }
}

