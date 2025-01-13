import 'package:fashion_app/src/products/models/products_model.dart';
import 'package:flutter/material.dart';

class ProductNotifier with ChangeNotifier {
  Products? product;

  void setProduct(Products p) {
    product = p;
    notifyListeners();
  }
}
