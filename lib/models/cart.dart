import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //List of Shoes for sales
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '2043',
        description: 'The forward-thinking desgin of his latest signature shoe',
        imagePath: 'lib/images/blazer.png'),
    Shoe(
        name: 'Hippie',
        price: '6244',
        description: 'All you have to do is pick up your feet',
        imagePath: 'lib/images/hippie.png'),
    Shoe(
        name: 'Air Jordan',
        price: '4723',
        description:
            'Don’t believe you have to be like anybody to be somebody.',
        imagePath: 'lib/images/jordan.png'),
    Shoe(
        name: 'Air 2',
        price: '10024',
        description:
            'Believe in something. Even if it means sacrificing everything.',
        imagePath: 'lib/images/air2.png'),
  ];

  //List of items in user cart
  List<Shoe> userCart = [];

  //get list of Shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //Get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items in cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();

  }

  //remove itemes in cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
