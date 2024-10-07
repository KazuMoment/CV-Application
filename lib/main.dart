import 'package:flutter/material.dart';
import 'package:cv/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("My CV"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            children: [
              // Centered details
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Align items to the top
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'images/profile.jpg',
                        width: 180, // Set the desired width
                        height: 180, // Set the desired height
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10), // Space between image and text
                    const Text(
                      'Shizuka Ishigami',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5), // Space between name and contact info
                    const Text(
                      'shizukaishigami@gmail.com',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '090-4567-8910',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40), // Space between centered details and left-aligned text
              // Left-aligned text
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 400, height: 200,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project Manager',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


