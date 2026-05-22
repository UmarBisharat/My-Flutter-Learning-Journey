import 'package:flutter/material.dart';

class WhatsappUi extends StatefulWidget {
  static const String id = 'whatsapp_ui';
  const WhatsappUi({super.key});

  @override
  State<WhatsappUi> createState() => _WhatsappUiState();
}

class _WhatsappUiState extends State<WhatsappUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.teal,
          title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
          bottom: TabBar(
            tabs: [
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
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('New Group')),
                PopupMenuItem(value: 2, child: Text('Settings')),
                PopupMenuItem(value: 3, child: Text('LogOut')),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // chats
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqQ5IkoOie2gSjhsqDfd6ZitOILPnuWPaN-g&s',
                    ),
                  ),
                  title: Text('Umar'),
                  subtitle: Text('Asslam o alikum'),
                  trailing: Text('12 : 00 PM'),
                );
              },
            ),

            // status
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMU2fm1TF4uhuWkiEpHcIZWRQIyXFHYMu3_A&s',
                    ),
                  ),
                  title: Text('Ballu'),
                  subtitle: Text('12 minutes ago'),
                );
              },
            ),

            //Calls
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToJj3NObRZ4M0k4iAQ9oyzViWLsKqqROfrFA&s',
                    ),
                  ),
                  title: Text('Umar'),
                  subtitle: Text('Today, 5:00 AM'),
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
