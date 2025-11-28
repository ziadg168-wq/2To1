import 'package:dev_flow/videoListPage.dart';
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatefulWidget {
  @override
  _PlaylistsScreenState createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  List<Map<String, String>> playlists = [
    {
      "title": "Intro to programing ",
      "id": "https://www.youtube.com/playlist?list=PLv3VqjyehAoRUEU3Gr1Fwzhdmz4wH0tNJ",
    },
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
      "id":"https://www.youtube.com/watch?v=GM6dQBmc-Xg&list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv"
    },
    {
      "title":"MySQL Course",
      "id":"https://www.youtube.com/playlist?list=PLDoPjvoNmBAz6DT8SzQ1CODJTH-NIA7R9"
    },
    {
      "title":"Php Course",
      "id":"https://www.youtube.com/playlist?list=PLDoPjvoNmBAy41u35AqJUrI-H83DObUDq"
    },
    {
      "title":"TypeScript Course",
      "id":"https://www.youtube.com/playlist?list=PLDoPjvoNmBAy532K9M_fjiAmrJ0gkCyLJ"
    },
    {
      "title":"ReactJS  Course",
      "id":"https://www.youtube.com/playlist?list=PLxRKoQzM5m3LhmXA4b9FwuuUFzRnJCzoe"
    },
    {
      "title":"Angular Course",
      "id":"https://www.youtube.com/playlist?list=PLNFDrRZdysFy005CMxlzukgndDqK-FlOQ"
    },
    {
      "title":".NET Course",
      "id":"https://www.youtube.com/playlist?list=PLP031NiNbUSTba3yQOEd3Nhyu38eaKz6k"
    },
    {
      "title":"Mongo DB Course",
      "id":"https://www.youtube.com/playlist?list=PLfDx4cQoUNObp1ujQRNooNiadKdlflevM"
    },
    {
      "title":"NodeJS Course",
      "id":"https://www.youtube.com/playlist?list=PLQtNtS-WfRa8OF9juY3k6WUWayMfDKHK2"
    },
    {
      "title":"Dart Course",
      "id":"https://www.youtube.com/playlist?list=PL93xoMrxRJIsYc9L0XBSaiiuq01JTMQ_o"
    },
    {
      "title":"Flutter Course",
      "id":"https://www.youtube.com/playlist?list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9"
    },
    {
      "title":"Firebase with Flutter Course",
      "id":"https://www.youtube.com/playlist?list=PL93xoMrxRJIvHhxhB21YzzeimEEzzAz6g"
    },
    {
      "title":"Flutter Logic Course",
      "id":"https://www.youtube.com/playlist?list=PLMdm32OeOsy3t2Jx5w7In4a9Yb0rWSF0J"
    },
    {
      "title":"Flutter Api Course",
      "id":"https://www.youtube.com/watch?v=T4ewqHOyUAw&list=PLMdm32OeOsy0cmqcprOB6d0mjNmSu1v5c"
    },
    {
      "title":"Ui/Ux Design Course",
      "id":"https://www.youtube.com/playlist?list=PLjzhiGLyugKwnM6uN4NXhfpU8L7XvtDEv"
    },
    {
      "title":"Data Analyst Course (In English)",
      "id":"https://www.youtube.com/playlist?list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF"
    },
    {
      "title":"Intro to Cyber Security Course",
      "id":"https://www.youtube.com/playlist?list=PLh2Jy0nKL_j1WZMzITHgUuzaadpSULlMm"
    },
    {
      "title":"Cyber Security Course",
      "id":"https://www.youtube.com/watch?v=IyxgtWKtzQw&list=PLMuAdKgHarVrcZCqzJFdNlTiKz66U19Xk"
    },
    {
      "title":"Intro to AI Course",
      "id":"https://www.youtube.com/playlist?list=PLXlHqMRg9lAa48zcXmM08DonedIxZcoz5"
    },
    {
      "title":"AI Course",
      "id":"https://www.youtube.com/playlist?list=PLhiFu-f80eo-h0whWvRsE1KL_A08wpmSB"
    }
  ];

  List<Map<String, String>> filteredPlaylists = [];

  @override
  void initState() {
    super.initState();
    filteredPlaylists = playlists;
  }

  void searchPlaylists(String query) {
    final results = playlists.where((item) {
      final title = item["title"]!.toLowerCase();
      final input = query.toLowerCase();
      return title.contains(input);
    }).toList();

    setState(() {
      filteredPlaylists = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // اخفاء الكيبورد
        },
     child: Scaffold(
      backgroundColor: Color(0xFF101116),
      appBar: AppBar(
        backgroundColor: Color(0xFF101116),
        elevation: 0,
        title: Text(
          "Courses:",
          style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: searchPlaylists,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search Courses...",
                hintStyle: TextStyle(color: Colors.white54),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Color(0xFF1A1C23),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPlaylists.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1C23),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      filteredPlaylists[i]["title"]!,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => videos_screen(
                            playlistId: filteredPlaylists[i]["id"]!,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    )
    );
  }
}
