import 'package:flutter/material.dart';

class ComponentActionButton extends StatelessWidget {
  final String label;
  final String iconPath;

  const ComponentActionButton(
      {super.key, required this.label, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          height: 90.0,
          decoration: BoxDecoration(
              color: const Color(0xFFf4f4f4),
              borderRadius: BorderRadius.circular(10.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 0.0, bottom: 5.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  label,
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(3.0),
                  height: 50.0,
                  child: Image.asset(iconPath))
            ],
          ),
        ),
      ),
    );
  }
}
