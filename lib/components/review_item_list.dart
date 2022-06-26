
import 'package:flutter/material.dart';

class ReviewItemList extends StatelessWidget {
  final String image;
  final String title;
  final String author;

  const ReviewItemList({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xffCEC6C6),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
