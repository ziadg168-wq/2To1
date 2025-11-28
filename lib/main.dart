import 'package:dev_flow/welcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
// This widget is the root of your application.
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        ),
        //home:
        initialRoute: welcome_screen.rooteScreen ,
        routes: {
          welcome_screen.rooteScreen: (context) => welcome_screen()
        }
    );
  }
}
