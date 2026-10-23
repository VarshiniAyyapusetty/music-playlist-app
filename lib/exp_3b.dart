
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
      title: 'Experiment 3B',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int columns;
    String device;
    double fontSize;

    if (screenWidth < 600) {
      columns = 1;
      device = 'Mobile';
      fontSize = 22;
    } else if (screenWidth < 900) {
      columns = 2;
      device = 'Tablet';
      fontSize = 28;
    } else {
      columns = 3;
      device = 'Desktop';
      fontSize = 34;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive UI - Experiment 3B'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Media Query and Breakpoints',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Device Type: $device',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Screen Width: ${screenWidth.toStringAsFixed(0)} pixels',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: columns,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: const [
                  MenuCard(title: 'Home', icon: Icons.home),
                  MenuCard(title: 'Profile', icon: Icons.person),
                  MenuCard(title: 'Music', icon: Icons.music_note),
                  MenuCard(title: 'Playlists', icon: Icons.queue_music),
                  MenuCard(title: 'Favorites', icon: Icons.favorite),
                  MenuCard(title: 'Settings', icon: Icons.settings),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.teal,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
