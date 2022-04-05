import 'package:flutter/material.dart';
import 'fooderlich.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            // TODO 6: Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Recipe Trends',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            // TODO 7: Add Center widget with Chip widget children],),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 14,
                runSpacing: 12,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Green',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Wheat',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Pestrician',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Mint',
                    ),
                  ),
                  Chip(
                    label: Text(
                      'Lemonade',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
