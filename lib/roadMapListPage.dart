import 'package:dev_flow/roadMapPage.dart';
import 'package:flutter/material.dart';

class roadMap_screen extends StatefulWidget {
  const roadMap_screen({super.key});

  @override
  State<roadMap_screen> createState() => _roadMap_screenState();
}

class _roadMap_screenState extends State<roadMap_screen> {
  final List<Map<String , String>> titles = [
  {
    "title": "Front-End Development",
    "rmap": "assets/front end.png"
  },
  {
    "title": "Back-End Development",
    "rmap": "assets/back end.png"
  },
  {
    "title": "Mobile App Development with Flutter ",
    "rmap": "assets/flutter.png"
  },
  {
    "title": "Data Analyses",
    "rmap":"assets/data.png"
  },
  {
    "title": "Cyber Security",
    "rmap": "assets/cyper.png"
  },
  {
    "title": "Artificial Intelligence",
    "rmap": "assets/ai.png"
  },
  {
    "title": "Ui and Ux Design",
    "rmap": "assets/ui.png"
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF101116),
    appBar: AppBar(
    backgroundColor: const Color(0xFF101116),
    elevation: 0,
    title: Row(
    children: [
    // Image.asset("assets/logo.png", height: 40, width: 60,),
    const SizedBox(width: 12),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text(
    "Road Maps:",
    style: TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    ),
    ),
    ])
    ]
    )
    ),
    body:ListView.builder(
      itemCount: titles.length,
      padding: EdgeInsets.all(16),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => map_screen(
                    rmapp:titles[index]["rmap"]!,
                ),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFF1A1C23),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titles[index]["title"]!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white70,
                  size: 28,
                ),
              ],
            ),
          ),
        );
      },
    )
      ,
    );
  }
}
