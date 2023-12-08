import 'package:flutter/material.dart';

import 'chats_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App UI Example V.1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ChatsScreen(title: 'Chats'),
    );
  }
}
