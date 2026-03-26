import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String channel;
  final String views;
  final String thumbnailUrl;

  const VideoCard({
    super.key,
    required this.title,
    required this.channel,
    required this.views,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              thumbnailUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.error,
                    size: 60,
                    color: Colors.grey[600],
                  ),
                );
              },
            ),
            Icon(
              Icons.play_circle_fill,
              size: 60,
              color: Colors.white.withOpacity(0.8),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                child: const Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$channel  •  $views',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const Divider(),
      ],
    );
  }
}