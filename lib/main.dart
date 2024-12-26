import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter/counter_provider.dart';
import 'package:provider_demo/counter/counter_view.dart';
import 'package:provider_demo/list/list_page.dart';
import 'package:provider_demo/list/list_provider.dart';

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
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListPage(),
      ),
    );
  }
}
