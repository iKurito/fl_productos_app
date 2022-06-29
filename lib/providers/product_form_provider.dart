import 'package:flutter/material.dart';

import 'package:fl_productos_app/models/models.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Product product;

  ProductFormProvider(this.product);

  void updateAvailability(bool value) {
    product.available = value;
    notifyListeners();
  }

  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}