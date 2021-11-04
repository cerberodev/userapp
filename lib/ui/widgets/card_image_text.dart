import 'package:flutter/material.dart';

class CardImageText extends StatelessWidget {
  const CardImageText({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              width: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'This username is: $text',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
