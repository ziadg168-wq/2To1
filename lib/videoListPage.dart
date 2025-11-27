import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class videos_screen extends StatefulWidget {
  final String playlistId ;
  const videos_screen({super.key, required this.playlistId});
  @override
  State<videos_screen> createState() => _videos_screenState();
}

class _videos_screenState extends State<videos_screen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.playlistId));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        scaffoldBackgroundColor:Colors.black
        ,),
      home: Scaffold(
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
    body:WebViewWidget(controller: _controller),),
    );
  }
}
