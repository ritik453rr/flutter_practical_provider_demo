import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter/counter_provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Increment Buttom
          FloatingActionButton(
            onPressed: () {
              // Provider.of<CounterProvider>(context,listen: false).increment();
              context.read<CounterProvider>().increment();
            },
            child: const Icon(Icons.add),
          ),

          /// Decrement Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: FloatingActionButton(
              onPressed: () {
                // Provider.of<CounterProvider>(context,listen: false).increment();
                context.read<CounterProvider>().decrement();
              },
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
      body:

          /// Counter
          Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) => Text(
            //'${counterProvider.getCount()}',
            '${context.watch<CounterProvider>().getCount()}',
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
