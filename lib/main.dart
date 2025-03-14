import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:old_portfolio/screens/home_screen.dart';
import 'package:old_portfolio/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        canvasColor: kBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: TextStyle(color: kBodyTextColor),
              bodyMedium: TextStyle(color: kBodyTextColor),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
