import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cart_controller.dart';
import '../../controller/shopping_controller.dart';
import '../widgets/card_item.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);

  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: shoppingController.products.length,
                itemBuilder: (context, index) {
                  var productItem = shoppingController.products[index];
                  return CardItem(
                    name: productItem.name,
                    description: productItem.description,
                    price: productItem.price,
                    onButtonPressed: () =>
                        cartController.addToItem(productItem),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Obx(
            () => Text(
              'Total amount: \$${cartController.totalPrice}',
              style: const TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
          const SizedBox(height: 100.0),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.black87,
        icon: const Icon(Icons.add_shopping_cart_rounded),
        label: Obx(
          () => Text(
            '${cartController.count}',
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
