import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

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
                      Icons.arrow_back_sharp, color: Colors.white70,
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
                      Icons.video_call, color: Colors.white70, size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone, color: Colors.white70, size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded, color: Colors.white70, size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Expanded to hold chat messages (can be added later)
              Expanded(
                child: Container(
                  color: Colors.transparent,
                ),
              ),

              // Message input field
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    // Camera icon button
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt_outlined, color: Colors.white70),
                    ),
                    // Text field for message input
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xff2B303A),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const TextField(
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle: TextStyle(color: Colors.white54),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    // Send message button
                    IconButton(
                      onPressed: () {
                        // Add functionality to send the message
                      },
                      icon: const Icon(Icons.send, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
