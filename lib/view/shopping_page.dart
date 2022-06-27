import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/controller/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);

  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.products[index].name,
                                      style: const TextStyle(fontSize: 24.0)
                                    ),
                                    Text(
                                      controller.products[index].description
                                    ),
                                  ],
                                ),
                                Text(
                                  '\$${controller.products[index].price}',
                                  style: const TextStyle(fontSize: 24.0)
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('add to card'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            ),
          ),
          const SizedBox(height: 30.0),
          const Text(
            'Total amount',
            style: TextStyle(fontSize: 25.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
