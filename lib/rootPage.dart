import 'package:dev_flow/homePage.dart';
import 'package:dev_flow/playListPage.dart';
import 'package:dev_flow/roadMapListPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class root extends StatefulWidget {
  static const String routeScreen = 'rootPage';
  const root({super.key});
  @override
  State<root> createState() => _rootState();
}
class _rootState extends State<root> {
  late PageController controller ;
  late List<Widget> pages = [];
  int currentScreen=0;
  void initState(){
    pages=[
      home_screen(),
      roadMap_screen(),
      PlaylistsScreen()
    ];
    controller=PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
            backgroundColor: const Color(0xFF101116),
            elevation: 0,
            leading:

                Image.asset("assets/logo.png", height: 40, width: 60,),
            title:
            Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dev Flow",
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
        body: PageView(
          controller: controller,
          children: pages,
        ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF1A1C23),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Color(0xFF00FFFF),
          unselectedItemColor: Colors.white,
          currentIndex: currentScreen,
          onTap: (index) {
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(currentScreen);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: "Road maps",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: "Courses",
            ),
          ],
        ),
      ),
    );
  }
}
