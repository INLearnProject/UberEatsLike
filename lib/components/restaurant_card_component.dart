import 'package:flutter/material.dart';
import '../../models/restaurant_model.dart';

class ComponentRestaurantCard extends StatelessWidget {
  final Restaurant data;
  const ComponentRestaurantCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            data.assetImage,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5.0),
          Text(data.title, style: const TextStyle(fontSize: 18.0)),
          const SizedBox(height: 1.0),
          buildDetails()
        ],
      ),
    );
  }

  buildDetails() {
    return Row(
      children: [
        const Icon(Icons.local_activity, color: Colors.green, size: 16.0),
        Text(
          '• Frais de livraison : ${data.deliverCost.toStringAsFixed(2)}€ • ${data.minDelay} - ${data.maxDelay} min',
          style: const TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
