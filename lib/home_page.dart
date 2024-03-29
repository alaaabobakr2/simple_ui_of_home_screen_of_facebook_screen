import 'package:facebook/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
            child: Row(
              children: [
                // Story(),
                // SizedBox(width: 15),
                // Story(),
                // SizedBox(width: 13),
                // Story(),
                // SizedBox(width: 12),
                // Story(),
                // SizedBox(width: 12),
                // Story(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => const Post(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
