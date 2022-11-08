import 'package:flutter/material.dart';

class ComponentActionButtonMin extends StatelessWidget {
  final String label;
  final String iconPath;

  const ComponentActionButtonMin(
      {super.key, required this.label, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: SizedBox(
          height: 110.0,
          child: Column(
            children: [
              Container(
                  height: 70.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFFf4f4f4),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(child: Image.asset(iconPath, height: 50))),
              const SizedBox(height: 4.0),
              Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                alignment: Alignment.center,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
