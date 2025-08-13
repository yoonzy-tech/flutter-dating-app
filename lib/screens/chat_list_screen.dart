import 'package:flutter/material.dart';
import 'package:flutter_dating_app/screens/chat_screen.dart';
import 'package:flutter_dating_app/data.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chats')),
      body: ListView.builder(
        itemCount: Data.chats.length,
        itemBuilder: (context, index) {
          final chat = Data.chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat['profile']!),
            ),
            title: Text(chat['name']!),
            subtitle: Text(chat['lastMessage']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ChatScreen()),
              );
            },
          );
        },
      ),
    );
  }
}