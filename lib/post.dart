import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              children: [
                Text(
                  "Owner",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text("3h"),
                    Icon(
                      Icons.public_outlined,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12,),
          child:
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              "My Post",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Row(
            children: [
                  const Text("100"),
              Expanded(
                child:Image.asset(
                    "assets/images/like.jpg",
                    alignment: Alignment.centerLeft,
                    height: 20,
                    width: 50,
                  ),
              ),
             // const SizedBox(width: 190,),
              const Text(
                "100 Comments",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 10,
          endIndent: 10,
          thickness: 1,
          color: Colors.grey,
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/singleLike.jpg",
                height: 20,
                width: 20,
              ),
              const Text("Like"),
              const SizedBox(
                width: 35,
              ),
              Image.asset(
                "assets/images/comment.jpg",
                height: 20,
                width: 20,
              ),
              const Text("Comment"),
              const SizedBox(
                width: 35,
              ),
              Image.asset(
                "assets/images/share.png",
                height: 20,
                width: 20,
              ),
              const Text("Share"),

            ],
          ),
        ),
        const Divider(
          indent: 10,
          endIndent: 10,
          thickness: 1,
          color: Colors.grey,
          height: 40,
        ),
      ],
      ),
    );
  }
}
