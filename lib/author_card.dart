import 'package:flutter/material.dart';
import 'circular_image.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isfavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: AssetImage('assets/author_katz.jpeg'),
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              const snackbar = SnackBar(content: Text('Favourite pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
              setState(() {
                _isfavorited = !_isfavorited;
              });
            },
            icon: Icon(_isfavorited ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
          ),
        ],
      ),
    );
  }
}
