import 'package:darklight/Components/box.dart';
import 'package:darklight/Components/button.dart';
import 'package:flutter/material.dart';
import 'package:darklight/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:darklight/theme/themeProvider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body :Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return Center(
            child: MyBox(
              color: Theme.of(context).colorScheme.primary,
              child: MyButton(
                color : Theme.of(context).colorScheme.secondary,
                onTap: (){
                    value.toggleTheme();
                },
              ),
            ),
          );
        }
      )
    );
  }
}
