class Grocery {
  String name = ' ';
  int quantity = 0;

  Grocery({this.name = '', this.quantity = 0});

  List getGroceries()
  {
    return [
      Grocery(name: 'Cucumber', quantity: 4),
      Grocery(name: 'Lettuce', quantity: 4),
      Grocery(name: 'Chicken', quantity: 4),
      Grocery(name: 'Ketchup', quantity: 4),
    ];
  }
}

