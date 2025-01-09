import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/data_list/add_data/add_data_view.dart';
import 'package:provider_demo/data_list/data_list_provider.dart';

class DataListView extends StatelessWidget {
  const DataListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
        centerTitle: true,
        backgroundColor: Colors.green,
        surfaceTintColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddDataView()));
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<ListProvider>(
        builder: (context, listProvider, child) {
          var allData = listProvider.getData();
          return allData.isNotEmpty
              ? ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('${allData[index]['name']}'),
                      subtitle: Text('${allData[index]['contact']}'),
                      trailing: SizedBox(
                        width: 80,
                        child: Row(
                          children: [
                            /// Edit.....
                            IconButton(
                              onPressed: () {
                                context.read<ListProvider>().updataData(
                                  {
                                    "name": "vashu",
                                    "contact": 9678987744,
                                  },
                                  index,
                                );
                              },
                              icon: const Icon(Icons.edit),
                            ),

                            /// Delete
                            IconButton(
                              onPressed: () {
                                context.read<ListProvider>().deleteData(index);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : const Center(
                  child: Text("No Data"),
                );
        },
      ),
    );
  }
}
