import 'package:flutter/material.dart';
import 'package:darklight/theme/theme.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData themeData = lightMode;

  void toggleTheme()
  {
    if(themeData==lightMode)
      {
        themeData = darkMode;
        notifyListeners();
      }

    else
      {
        themeData = lightMode;
        notifyListeners();
      }
  }
}