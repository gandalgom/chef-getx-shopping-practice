import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
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
                              children: const [
                                Text('Product Name',
                                  style: TextStyle(fontSize: 24.0)
                                ),
                                Text('Product Name'),
                              ],
                            ),
                            const Text('\$30',
                              style: TextStyle(fontSize: 24.0)
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
