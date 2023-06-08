import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
  });

  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(
                  20,
                )),
            child: Image.asset(
              iconImagePath,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tileTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                tileSubtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_right_rounded,
          )
        ],
      ),
    );
  }
}
