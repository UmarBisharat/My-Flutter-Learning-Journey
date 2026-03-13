import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  static const String id = 'screen_5';
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(
                child: Text('Chats', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('Status', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('Calls', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 22),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('New Groups')),
                PopupMenuItem(value: 2, child: Text('Settings')),
                PopupMenuItem(value: 3, child: Text('Log Out')),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // camera
            Icon(Icons.camera_alt, color: Colors.teal, size: 200),
            // chats
            ListView.builder(
              itemCount: 22,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_200_200/B4DZv4HQzKJoAY-/0/1769394214008?e=2147483647&v=beta&t=crfcs2P48dMcAYiA4nl8qteM61hT8hKjmDwJrcXbu7g',
                    ),
                  ),
                  title: Text('Umar'),
                  subtitle: Text('Bhai kaha h tu ??'),
                  trailing: Text('2:33 PM'),
                );
              },
            ),
            // status
            Center(
              child: Text(
                'No Updates',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // calls
            ListView.builder(
              itemCount: 22,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_200_200/B4DZv4HQzKJoAY-/0/1769394214008?e=2147483647&v=beta&t=crfcs2P48dMcAYiA4nl8qteM61hT8hKjmDwJrcXbu7g',
                    ),
                  ),
                  title: Text('Umar'),
                  subtitle: Text('Missed Calls'),
                  trailing: Icon(Icons.call_end, color: Colors.red),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
