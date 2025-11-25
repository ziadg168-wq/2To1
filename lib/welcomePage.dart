import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class welcome_screen extends StatefulWidget {
  static const String rooteScreen="welcomePage";
  const welcome_screen({super.key});

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen>with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF101116),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo + DevFlow
              Row(
                children: [
                  Image.asset("assets/logo.png", height: 60, width: 60),
                  const SizedBox(width: 12),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Devflow",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                  ),
                ],
              ),



          const SizedBox(height: 100),

          // Welcome title
          const Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Courier',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 50),

          // Text paragraphs
          Text(
            "print(\"DevFlow where you can find the latest programming and developing news , free courses , road maps and Ai tools\");",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Courier',
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _controller.value,
                child: const Text(
                  "|",
                  style: TextStyle(
                    fontFamily: 'Courier',
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
          const Spacer(),

          // Button
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
              },
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(width: 6),
                    Text(
                        "Run",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Courier",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                  ]),
            ),
          ),
    ]),)
    );
  }
}

