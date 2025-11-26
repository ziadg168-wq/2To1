import 'package:http/http.dart' as http;
import 'package:dart_rss/dart_rss.dart';
import 'package:flutter/material.dart';

Future<List<RssItem>> loadNews(String url) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final feed = RssFeed.parse(response.body);
    return feed.items ?? [];
  } else {
    throw Exception("Failed to load RSS");
  }
}

class home_screen extends StatefulWidget {
  static const String rooteScreen="homePage";
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  late Future<List<RssItem>> news;

  @override
  void initState() {
    super.initState();
    news = loadNews("https://stackoverflow.blog/feed/");
  }

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
                "Latest News:",
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
      body: FutureBuilder<List<RssItem>>(
        future: news,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
                child: CircularProgressIndicator(color: Colors.white));
          }

          final items = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: items.length,
            itemBuilder: (context, i) {
              final item = items[i];

              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1C23),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title ?? "",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item.description ?? "",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _buildTag(item.categories?.isNotEmpty == true
                            ? item.categories!.first.value ?? "News"
                            : "News"),
                        const SizedBox(width: 10),
                        Text(
                          item.pubDate ?? "",
                          style: const TextStyle(
                              color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF20232A),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.lightBlueAccent, fontSize: 12),
      ),
    );
  }
}
