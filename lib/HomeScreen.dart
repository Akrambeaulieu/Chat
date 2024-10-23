import 'package:flutter/material.dart';

import 'ChatScreen.dart';
import 'chat_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B202D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Messages',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 36,
                  ),
                )
              ],
            ),
            ),
            const SizedBox(
              height: 1,
            ),
            Padding(padding: const EdgeInsets.only(left: 16.0),
            child : const Text('R E C E N T', style: TextStyle(color: Colors.white),),
            ),
              const SizedBox(
              height: 15,
            ),









            SizedBox(
              height: 110,
              child: ListView(
              scrollDirection: Axis.horizontal,
            children:[
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(left: 16.0),
                child:
                GestureDetector(
                  onTap: () {
                    // Navigate to ChatPage when the CircleAvatar is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()), // Replace ChatPage with your actual chat page widget
                    );
                  },
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:Image.asset("images/user.jpg").image,
                ),
                ),),

                const SizedBox(height: 10,),
                Padding(padding:const EdgeInsets.only(left: 16.0),
                  child:
                  const Text(' User 1', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,

                ),),
                ),
              ],
            ),
                const SizedBox(width: 20,),
            ]
            ),
            ),











            const SizedBox(height: 20,),
            Container(
              decoration:const BoxDecoration(
                color: Colors.black,
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              width: double.infinity,
              height: 620,





            child:ListView(
                children: [
                  //pour ouvrir la fentre de discussion des users
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chatscreen()));//placer la ChatPage()
                    } ,

                    onLongPress: () {
                      // Show context menu when long pressing
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min, // Adjust the size of the modal to fit its content
                            children: [
                              ListTile(
                                leading: Icon(Icons.delete, color: Colors.red),
                                title: Text('Supprimer', style: TextStyle(color: Colors.red)),
                                onTap: () {
                                  // Add delete functionality here
                                  Navigator.pop(context); // Close the modal after selecting an action
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.block, color: Colors.orange),
                                title: Text('Bloquer', style: TextStyle(color: Colors.orange)),
                                onTap: () {
                                  // Add block functionality here
                                  Navigator.pop(context); // Close the modal after selecting an action
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.volume_off, color: Colors.blue),
                                title: Text('Sourdine', style: TextStyle(color: Colors.blue)),
                                onTap: () {
                                  // Add mute functionality here
                                  Navigator.pop(context); // Close the modal after selecting an action
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Padding(
                      padding: const EdgeInsets.only(left: 26.0, top: 35,right: 10),
                      child: Row(
                        children:[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            Image.asset("images/user.jpg").image,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('  user1', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),),
                                  SizedBox(width: 210,),
                                  Text('08:43', style: TextStyle(
                                    color: Colors.white70,
                                  ),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('  ouvrir la discussion',style: TextStyle(
                                color: Colors.white70,
                              ),),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
