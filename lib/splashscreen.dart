import 'dart:async';
import 'package:flutter/material.dart';
import 'package:random_quote_generator/home.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // dark background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top quotation mark

            // Row for Q + uotes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Big teal Q
                Text(
                  'Q',
                  style: TextStyle(
                    color: Color.fromARGB(255, 94, 118, 255),
                    fontSize: 100,
                    // color: Colors.teal[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                // "uotes" aligned manually
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ), // adjust vertical position
                  child: const Text(
                    'uotes',
                    style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 94, 118, 255),
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
