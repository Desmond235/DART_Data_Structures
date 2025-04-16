void main() {
  var groceries = [
    ['apple'],
    ['banana']
  ];
  var products = [
    {"name": "Groceries", "price": 34.00},
    {"name": "vegetables", "price": 6.56},
    {"name": "Groceries", "price": 45.00},
    {"name": "Groceries", "price": 21.30},
    {"name": "Groceries", "price": 23.5},
  ];

  for (var i = 0; i < groceries.length; i++) {
    for (var x = 0; x < groceries[i].length; x++) {
      print(groceries[i][x]);
    }
  }

  for (var productList in products) {
    for (var product in productList.values) {
      print(product);
    }
  }
}

