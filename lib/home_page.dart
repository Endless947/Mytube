import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'video_player_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // List of videos with title, channel, views, and thumbnail
  static List<Map<String, String>> videos = [
    {
      'title': 'Flutter Tutorial for Beginners',
      'channel': 'Google Developers',
      'views': '1.2M views',
      'thumbnail': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg',
    },
    {
      'title': 'Top 10 Android Apps 2024',
      'channel': 'Tech World',
      'views': '800K views',
      'thumbnail': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg',
    },
    {
      'title': 'Learn Dart in 30 Minutes',
      'channel': 'Code With Andrea',
      'views': '500K views',
      'thumbnail': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg',
    },
    {
      'title': 'Build a Chat App in Flutter',
      'channel': 'Flutter Dev',
      'views': '300K views',
      'thumbnail': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerEscapes.jpg',
    },
    {
      'title': 'Dark Mode UI Design Tips',
      'channel': 'UI Designer Pro',
      'views': '150K views',
      'thumbnail': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerFun.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.play_circle_fill, color: Colors.red),
            SizedBox(width: 8),
            Text('MyTube'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail image
                Image.network(
                  videos[index]['thumbnail']!,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: double.infinity,
                      height: 180,
                      color: Colors.grey[300],
                      child: Icon(Icons.image_not_supported, size: 60, color: Colors.grey),
                    );
                  },
                ),
                // Video info as a ListTile
                ListTile(
                  leading: Icon(Icons.play_circle_fill, color: Colors.red, size: 40),
                  title: Text(
                    videos[index]['title']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${videos[index]['channel']}  •  ${videos[index]['views']}',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerPage(
                          title: videos[index]['title']!,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}