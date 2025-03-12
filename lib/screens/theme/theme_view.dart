import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/screens/theme/theme_provider.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Theme Page"),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 200,
                child: RadioListTile<ThemeMode>(
                  title: Text("Light Mode"),
                  value: ThemeMode.light,
                  groupValue: themeProvider.themeMode,
                  onChanged: (value) {
                    if (value != null) themeProvider.setTheme(value);
                  },
                ),
              ),
              SizedBox(
                width: 200,
                child: RadioListTile<ThemeMode>(
                  title: Text("Dark Mode"),
                  value: ThemeMode.dark,
                  groupValue: themeProvider.themeMode,
                  onChanged: (value) {
                    if (value != null) themeProvider.setTheme(value);
                  },
                ),
              ),
            
              Icon(Icons.favorite),
            ],
          ),
        ));
  }
}
