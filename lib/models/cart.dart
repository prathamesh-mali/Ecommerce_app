import 'package:ecom_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoe
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan 2",
      price: '500',
      imagePath: 'assets/images/airjordan.png',
      description: "Red Shoe, Red vibes",
    ),
    Shoe(
      name: "Air Jordan 6",
      price: '3000',
      imagePath: 'assets/images/jordan3.png',
      description: "shoe to match your vibe",
    ),
    Shoe(
      name: "Air Jordan 4",
      price: '500',
      imagePath: 'assets/images/shoes3.png',
      description: "Red Shoe, Red vibes",
    ),
    Shoe(
      name: "Nike Sports ",
      price: '500',
      imagePath: 'assets/images/shoes2.png',
      description: "Red Shoe, Red vibes",
    )
  ];

  //list of items in user cart
  List<Shoe> userCart = [];
  //list of shoes for sale
  List<Shoe> getShopList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
  // ass items to cart

  void addItemstoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
