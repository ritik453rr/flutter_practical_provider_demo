import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _mData = [];

  /// Add data to list
  void addData(Map<String, dynamic> data) {
    _mData.add(data);
    notifyListeners();
  }

  /// Get list data
  List<Map<String, dynamic>> getData() => _mData;

  /// Update data
  void updataData(Map<String, dynamic> udatedData, int index) {
    _mData[index] = udatedData;
    notifyListeners();
  }

  /// Delete data
  void deleteData(int index) {
    _mData.removeAt(index);
    notifyListeners();
  }
}
