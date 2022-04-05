import 'package:basic_themes/author_card.dart';
import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      // 1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2
        child: Column(
          children: [
            // TODO 1: add author information
            AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            // 1
            Expanded(
              // 2
              child: Stack(
                children: [
                  // 3
                  // ignore: prefer_const_constructors
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: TextStyle(
                          height: 3, fontSize: 20, color: Colors.black),
                    ),
                    // 4
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
