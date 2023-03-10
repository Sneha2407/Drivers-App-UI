import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:havana_ui/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       builder: (context , child) {
        return
      MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
           textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ),),
        home: const LoginPage(),
      );}
    );}
  }




