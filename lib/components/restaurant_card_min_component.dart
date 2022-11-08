import 'package:flutter/material.dart';
import '../../models/restaurant_model.dart';

class ComponentRestaurantMinCard extends StatelessWidget {
  final Restaurant data;
  const ComponentRestaurantMinCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          Image.asset(
            data.assetImage,
            height: 150.0,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5.0),
          Align(
              alignment: Alignment.topLeft,
              child: Text(data.title, style: const TextStyle(fontSize: 18.0))),
          const SizedBox(height: 1.0),
          buildDetails()
        ],
      ),
    );
  }

  buildDetails() {
    return Column(children: [
      Row(
        children: [
          const Icon(Icons.local_activity, color: Colors.green, size: 16.0),
          Text(
            '• Frais de livraison : ${data.deliverCost.toStringAsFixed(2)}€ • ',
            style: const TextStyle(fontSize: 15.0),
          ),
        ],
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          ' ${data.minDelay} - ${data.maxDelay} min',
          style: const TextStyle(fontSize: 14.0),
        ),
      ),
    ]);
  }
}
