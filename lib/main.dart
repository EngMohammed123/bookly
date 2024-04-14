import 'package:bookly/constants.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}
class Bookly extends StatelessWidget{
  const Bookly({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),              //get
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }

}