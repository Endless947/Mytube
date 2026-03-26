import 'package:flutter/material.dart';
import 'video_card.dart';
import 'welcome_page.dart';
import 'video_player_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<Map<String, String>> videos = [
    {
      'title': 'Flutter Tutorial for Beginners',
      'channel': 'Google Developers',
      'views': '1.2M views',
      'videoUrl': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      'thumbnailUrl': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg',
    },
    {
      'title': 'Top 10 Android Apps 2024',
      'channel': 'Tech World',
      'views': '800K views',
      'videoUrl': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
      'thumbnailUrl': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg',
    },
    {
      'title': 'Learn Dart in 30 Minutes',
      'channel': 'Code With Andrea',
      'views': '500K views',
      'videoUrl': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      'thumbnailUrl': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg',
    },
    {
      'title': 'Build a Chat App in Flutter',
      'channel': 'Flutter Dev',
      'views': '300K views',
      'videoUrl': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
      'thumbnailUrl': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerEscapes.jpg',
    },
    {
      'title': 'Dark Mode UI Design Tips',
      'channel': 'UI Designer Pro',
      'views': '150K views',
      'videoUrl': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
      'thumbnailUrl': 'https://storage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerFun.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(Icons.play_circle_fill, color: Colors.red, size: 28),
            SizedBox(width: 8),
            Text(
              'MyTube',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const WelcomePage()),
                (route) => false,
              );
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      VideoPlayerPage(videoUrl: videos[index]['videoUrl']!),
                ),
              );
            },
            child: VideoCard(
              title: videos[index]['title']!,
              channel: videos[index]['channel']!,
              views: videos[index]['views']!,
              thumbnailUrl: videos[index]['thumbnailUrl']!,
            ),
          );
        },
      ),
    );
  }
}