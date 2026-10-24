
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PlaylistProvider(),
      child: const MyApp(),
    ),
  );
}

class PlaylistProvider extends ChangeNotifier {
  final List<String> songs = [
    'Perfect - Ed Sheeran',
    'Shape of You - Ed Sheeran',
    'Believer - Imagine Dragons',
  ];

  void addSong(String song) {
    songs.add(song);
    notifyListeners();
  }

  void removeSong(int index) {
    songs.removeAt(index);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Playlist App',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const PlaylistScreen(),
    );
  }
}

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final TextEditingController songController = TextEditingController();

  @override
  void dispose() {
    songController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final playlist = context.watch<PlaylistProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Music Playlist'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: songController,
              decoration: const InputDecoration(
                labelText: 'Enter song name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String song = songController.text.trim();

                if (song.isNotEmpty) {
                  playlist.addSong(song);
                  songController.clear();
                }
              },
              child: const Text('Add Song'),
            ),
            const SizedBox(height: 10),
            Text(
              'Total Songs: ${playlist.songs.length}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: playlist.songs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.music_note,
                        color: Colors.deepPurple,
                      ),
                      title: Text(playlist.songs[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          playlist.removeSong(index);
                        },
                      ),
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
