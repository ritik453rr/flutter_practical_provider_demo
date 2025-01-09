import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/data_list/data_list_provider.dart';

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
                "name": "Ritik",
                "contact": 9690302137,
              },
            );
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
