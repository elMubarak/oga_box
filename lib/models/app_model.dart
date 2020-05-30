import 'dart:collection';

import 'package:flutter/material.dart';
import 'file:///home/lectro/Documents/devSpace/mobile/flutter/oga_box_delivery/lib/models/add_item_model.dart';

class AppModel extends ChangeNotifier {
  List<AddItems> _items = [];
  UnmodifiableListView<AddItems> get items {
    return UnmodifiableListView(_items);
  }

  int itemsListCount() {
    return _items.length;
  }

  void addItem(String newItemName, String newItemDescription) {
    final item = AddItems(
      itemName: newItemName,
      itemDescription: newItemDescription,
    );
    _items.add(item);
    notifyListeners();
  }

  void deleteItem(AddItems items) {
    _items.remove(items);
    notifyListeners();
  }

//
  int _itemCount = 0;
  int get itemCount => _itemCount;

  void itemIncrement() {
    _itemCount++;
    notifyListeners();
  }

  void itemDecrement() {
    _itemCount--;
    if (_itemCount < 0) {
      _itemCount = 0;
    }
    notifyListeners();
  }

  void incrementItems(AddItems items) {
    items.itemIncrement();
    notifyListeners();
  }

  void decrementItems(AddItems items) {
    items.itemDecrement();
    notifyListeners();
  }

  //
}
