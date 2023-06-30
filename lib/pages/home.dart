import 'package:flutter/material.dart';
import 'package:instagram_skeleton/ultils/bubble_stories.dart';
import 'package:instagram_skeleton/ultils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Naruto',
    'Sasuke',
    'Eren',
    'Levi',
    'Mikasa',
    'Hinata',
    'Zoro',
    'Sanji'
  ];

  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // Stories
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: ((context, index) {
                  return (BubbleStories(text: people[index]));
                })),
          ),

          // Posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: ((context, index) {
                  return (UserPosts(name: people[index]));
                })),
          )
        ],
      ),
    );
  }
}
