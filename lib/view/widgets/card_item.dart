import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    required this.name,
    required this.description,
    required this.price,
    required this.onButtonPressed,
    Key? key,
  }) : super(key: key);

  final String name;
  final String description;
  final double price;

  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
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
                    Text(name, style: const TextStyle(fontSize: 24.0)),
                    Text(description),
                  ],
                ),
                Text('\$$price', style: const TextStyle(fontSize: 24.0)),
              ],
            ),
            ElevatedButton(
              onPressed: onButtonPressed,
              child: const Text('add to card'),
            ),
          ],
        ),
      ),
    );
  }
}