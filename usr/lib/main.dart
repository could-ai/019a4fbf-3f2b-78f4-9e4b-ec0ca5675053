import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pendidikan Islam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendidikan Islam'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: const [
            MenuCard(
              title: 'Al-Quran',
              icon: Icons.book,
              color: Colors.blue,
            ),
            MenuCard(
              title: 'Hadis',
              icon: Icons.message,
              color: Colors.green,
            ),
            MenuCard(
              title: 'Sholat',
              icon: Icons.access_time,
              color: Colors.orange,
            ),
            MenuCard(
              title: 'Sejarah Islam',
              icon: Icons.history,
              color: Colors.purple,
            ),
            MenuCard(
              title: 'Doa & Dzikir',
              icon: Icons.mosque,
              color: Colors.teal,
            ),
            MenuCard(
              title: 'Kuis',
              icon: Icons.quiz,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to respective page
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Navigasi ke $title')),
          );
        },
        borderRadius: BorderRadius.circular(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: color,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
