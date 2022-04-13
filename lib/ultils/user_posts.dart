import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[200]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        //bellow the posts ->button and comment
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.chat),
                    Icon(Icons.share),
                  ],
                ),
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        //Like By
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Like by '),
              Text(
                'Naruto',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                ' and other',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        //Captions
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: 'Naruto',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'ur picture is so cool dude')
            ]),
          ),
        )
      ],
    );
  }
}
