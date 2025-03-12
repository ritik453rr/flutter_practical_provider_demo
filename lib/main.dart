import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/screens/counter/counter_provider.dart';
import 'package:provider_demo/screens/theme/theme_view.dart';
import 'package:provider_demo/screens/theme/theme_provider.dart';
import 'package:provider_demo/screens/data_list/data_list_view.dart';
import 'package:provider_demo/screens/data_list/data_list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ListProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.green,
                centerTitle: true,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              iconTheme: const IconThemeData(color: Colors.red),
              appBarTheme: const AppBarTheme(
                color: Colors.red,
              ),
            ),
            home: const ThemeView(),
          );
        },
      ),
    );
  }
}
