import 'package:dev_flow/videoListPage.dart';
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget {
  final List<Map<String, String>> playlists = [
    {
      "title": "HTML Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji",
    },
    {
      "title": "CSS Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe",
    },
    {
      "title":"JavaScript Course",
      "id":"https://www.youtube.com/playlist?list=PLDoPjvoNmBAwSrfBPERTnCmWAbcMAwG9O"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101116),
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
                        "Courses:",
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
      body: ListView.builder(
        itemCount: playlists.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF1A1C23),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                playlists[i]["title"]!,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => videos_screen(
                      playlistId: playlists[i]["id"]!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
