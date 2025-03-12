import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/screens/data_list/data_list_provider.dart';

class AddDataView extends StatelessWidget {
  const AddDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data Page"),
        centerTitle: true,
        backgroundColor: Colors.green,
        surfaceTintColor: Colors.green,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            context.read<ListProvider>().addData(
              {
                "name": "Prince",
                "contact": 9192919291,
              },
            );
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
