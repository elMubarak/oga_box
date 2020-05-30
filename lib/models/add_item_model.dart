class AddItems {
  final String itemName;
  final String itemDescription;
  int itemCount;
  AddItems({
    this.itemName,
    this.itemDescription,
    this.itemCount = 0,
  });

  void itemIncrement() {
    itemCount++;
  }

  void itemDecrement() {
    itemCount--;
    if (itemCount < 0) {
      itemCount = 0;
    }
  }
}
