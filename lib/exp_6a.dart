
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widgets',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const MusicScreen(),
    );
  }
}

// Custom widget for displaying a song
class SongCard extends StatelessWidget {
  final String songName;
  final String singerName;
  final IconData songIcon;

  const SongCard({
    super.key,
    required this.songName,
    required this.singerName,
    required this.songIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Icon(songIcon, color: Colors.white),
        ),
        title: Text(
          songName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(singerName),
        trailing: const Icon(
          Icons.play_arrow,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Music'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 12),
          SongCard(
            songName: 'Perfect',
            singerName: 'Ed Sheeran',
            songIcon: Icons.music_note,
          ),
          SongCard(
            songName: 'Believer',
            singerName: 'Imagine Dragons',
            songIcon: Icons.album,
          ),
          SongCard(
            songName: 'Shape of You',
            singerName: 'Ed Sheeran',
            songIcon: Icons.headphones,
          ),
          SongCard(
            songName: 'Kesariya',
            singerName: 'Arijit Singh',
            songIcon: Icons.library_music,
          ),
        ],
      ),
    );
  }
}
