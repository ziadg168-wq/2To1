import 'package:dev_flow/videoListPage.dart';
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatefulWidget {
  @override
  _PlaylistsScreenState createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  List<Map<String, String>> playlists = [
    {
      "title": "Intro to Programing",
      "id": "https://www.youtube.com/playlist?list=PLv3VqjyehAoRUEU3Gr1Fwzhdmz4wH0tNJ",
      "image": "https://img.icons8.com/fluency/96/source-code.png"
    },
    {
      "title": "HTML Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji",
      "image": "https://img.icons8.com/color/96/html-5.png"
    },
    {
      "title": "CSS Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe",
      "image": "https://img.icons8.com/color/96/css3.png"
    },
    {
      "title": "JavaScript Course",
      "id": "https://www.youtube.com/watch?v=GM6dQBmc-Xg&list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv",
      "image": "https://img.icons8.com/color/96/javascript.png"
    },
    {
      "title": "MySQL Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAz6DT8SzQ1CODJTH-NIA7R9",
      "image": "https://img.icons8.com/color/96/mysql-logo.png"
    },
    {
      "title": "PHP Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAy41u35AqJUrI-H83DObUDq",
      "image": "https://img.icons8.com/officel/96/php-logo.png"
    },
    {
      "title": "TypeScript Course",
      "id": "https://www.youtube.com/playlist?list=PLDoPjvoNmBAy532K9M_fjiAmrJ0gkCyLJ",
      "image": "https://img.icons8.com/color/96/typescript.png"
    },
    {
      "title": "ReactJS Course",
      "id": "https://www.youtube.com/playlist?list=PLxRKoQzM5m3LhmXA4b9FwuuUFzRnJCzoe",
      "image": "https://img.icons8.com/color/96/react-native.png"
    },
    {
      "title": "Angular Course",
      "id": "https://www.youtube.com/playlist?list=PLNFDrRZdysFy005CMxlzukgndDqK-FlOQ",
      "image": "https://img.icons8.com/color/96/angularjs.png"
    },
    {
      "title": ".NET Course",
      "id": "https://www.youtube.com/playlist?list=PLP031NiNbUSTba3yQOEd3Nhyu38eaKz6k",
      "image": "https://img.icons8.com/color/96/net-framework.png"
    },
    {
      "title": "Mongo DB Course",
      "id": "https://www.youtube.com/playlist?list=PLfDx4cQoUNObp1ujQRNooNiadKdlflevM",
      "image": "https://img.icons8.com/color/96/mongodb.png"
    },
    {
      "title": "NodeJS Course",
      "id": "https://www.youtube.com/playlist?list=PLQtNtS-WfRa8OF9juY3k6WUWayMfDKHK2",
      "image": "https://img.icons8.com/color/96/nodejs.png"
    },
    {
      "title": "Dart Course",
      "id": "https://www.youtube.com/playlist?list=PL93xoMrxRJIsYc9L0XBSaiiuq01JTMQ_o",
      "image": "https://img.icons8.com/color/96/dart.png"
    },
    {
      "title": "Flutter Course",
      "id": "https://www.youtube.com/playlist?list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9",
      "image": "https://img.icons8.com/color/96/flutter.png"
    },
    {
      "title": "Firebase with Flutter",
      "id": "https://www.youtube.com/playlist?list=PL93xoMrxRJIvHhxhB21YzzeimEEzzAz6g",
      "image": "https://img.icons8.com/color/96/firebase.png"
    },
    {
      "title": "Flutter Logic",
      "id": "https://www.youtube.com/playlist?list=PLMdm32OeOsy3t2Jx5w7In4a9Yb0rWSF0J",
      "image": "https://img.icons8.com/color/96/artificial-intelligence.png"
    },
    {
      "title": "Flutter API Course",
      "id": "https://www.youtube.com/watch?v=T4ewqHOyUAw&list=PLMdm32OeOsy0cmqcprOB6d0mjNmSu1v5c",
      "image": "https://img.icons8.com/color/96/api.png"
    },
    {
      "title": "UI/UX Design",
      "id": "https://www.youtube.com/playlist?list=PLjzhiGLyugKwnM6uN4NXhfpU8L7XvtDEv",
      "image": "https://img.icons8.com/color/96/design.png"
    },
    {
      "title": "Data Analyst (English)",
      "id": "https://www.youtube.com/playlist?list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF",
      "image": "https://img.icons8.com/color/96/combo-chart.png"
    },
    {
      "title": "Intro to Cyber Security",
      "id": "https://www.youtube.com/playlist?list=PLh2Jy0nKL_j1WZMzITHgUuzaadpSULlMm",
      "image": "https://img.icons8.com/color/96/cyber-security.png"
    },
    {
      "title": "Cyber Security Course",
      "id": "https://www.youtube.com/watch?v=IyxgtWKtzQw&list=PLMuAdKgHarVrcZCqzJFdNlTiKz66U19Xk",
      "image": "https://img.icons8.com/color/96/cyber-security.png"
    },
    {
      "title": "Intro to AI",
      "id": "https://www.youtube.com/playlist?list=PLXlHqMRg9lAa48zcXmM08DonedIxZcoz5",
      "image": "https://img.icons8.com/color/96/brain.png"
    },
    {
      "title": "AI Course",
      "id": "https://www.youtube.com/playlist?list=PLhiFu-f80eo-h0whWvRsE1KL_A08wpmSB",
      "image": "https://img.icons8.com/color/96/brain.png"
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
      return title.contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredPlaylists = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xFF101116),
        appBar: AppBar(
          backgroundColor: Color(0xFF101116),
          elevation: 0,
          title: Text(
            "Courses:",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
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
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          filteredPlaylists[i]["image"]!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
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
      ),
    );
  }
}
