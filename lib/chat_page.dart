import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = []; // List to hold messages
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac', // User ID
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B202D),
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14),
        child: SafeArea(
          child: Column(
            children: [
              // Top bar with user info
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      // Action to perform when the CircleAvatar is tapped
                      print('CircleAvatar pressed!');
                    },
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("images/user.jpg"),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'user1',
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Expanded to hold chat messages
              Expanded(
                child: Chat(
                  messages: _messages, // Display messages
                  onSendPressed: _handleSendPressed, // Handle send message
                  user: _user,
                ),
              ),

              // Message input field (this will be handled by the Chat widget)
              // No need for a separate input field as Chat widget has its own
            ],
          ),
        ),
      ),
    );
  }

  // Method to handle message sending
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: DateTime.now().millisecondsSinceEpoch.toString(), // Unique ID for the message
      text: message.text,
    );

    _addMessage(textMessage); // Add the message to the list
  }

  // Method to add message to the list
  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message); // Insert message at the beginning
    });
  }
}
