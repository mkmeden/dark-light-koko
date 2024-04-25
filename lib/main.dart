import 'package:darklight/theme/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:darklight/Pages/homePage.dart';
import 'package:provider/provider.dart';
import 'package:darklight/theme/theme.dart';
import 'package:darklight/theme/themeProvider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child : const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: Provider.of<ThemeProvider>(context).themeData
    );
  }
}
