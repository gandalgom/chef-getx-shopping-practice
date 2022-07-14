import 'package:get/get.dart';

import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(const Duration(seconds: 2));

    var productData = [
      Product(
        id: 1,
        price: 30,
        description: 'some description about mouse',
        name: 'Mouse'
      ),
      Product(
        id: 2,
        price: 40,
        description: 'some description about keyboard',
        name: 'Keyboard'
      ),
      Product(
        id: 3,
        price: 620,
        description: 'some description about monitor',
        name: 'Monitor',
      ),
      Product(
        id: 4,
        price: 80,
        description: 'some description about RAM',
        name: 'RAM'),
      Product(
        id: 5,
        price: 120.5,
        description: 'some description about speaker',
        name: 'Speaker',
      ),
    ];
    products.assignAll(productData);
  }
}