import 'package:facebook/home_page.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B5998),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 230, right: 50, left: 50, bottom: 50),
            child: Image.asset("assets/images/facebook_icon.jpg"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Email or Phone",
                hintStyle: TextStyle(
                    color: Colors.white30,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                    color: Colors.white30,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage(),));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 13),
              margin:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              color: Colors.white10,
              child: const Text(
                "LOG IN",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white38,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
