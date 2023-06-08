import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
  });

  final String iconImagePath;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          padding: const EdgeInsets.all(
            20,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 8,
              )
            ],
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        )
      ],
    );
  }
}
