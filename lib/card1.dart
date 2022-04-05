import 'package:flutter/material.dart';

import 'fooderlich.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(
        // TODO: Add a stack of text
        child: Stack(
          children: [
            // 8
            Text(
              category,
            ),
            // 9
            Positioned(
              child: Text(
                title,
              ),
              top: 20,
            ),
            // 10
            Positioned(
              child: Text(
                description,
              ),
              bottom: 30,
              right: 0,
            ),
            // 11
            Positioned(
              child: Text(
                chef,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),

        // 1
        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: AssetImage('assets/mag1.jpg'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
