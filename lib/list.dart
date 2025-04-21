void main(List<String> args) {
  List<String> fruits = ['apple', 'mango', 'orange', 'watermelon'];

  fruits = <String>[for (var fruit in fruits) fruit.toUpperCase()];

  print(fruits.join("\n"));

  var address = <dynamic>[
    Address(street: '123 fake street', state: 'Abudja', zipCode: '123')
  ];
  address = [for(var add in address)
   [add.state[0].toUpperCase()+ add.state.substring(1), add.street, add.zipCode].join("\n")];
  print(address.join(""));

  // for (var add in address){
  //   print(add.state);
  // }

}

class Address {
  final String street;
  final String state;
  final String zipCode;

  Address({
    required this.street,
    required this.state,
    required this.zipCode,
  });
}
