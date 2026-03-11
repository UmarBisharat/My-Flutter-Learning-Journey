import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'screen_1'; // updated for this file
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatsApp', style: TextStyle(color: Colors.white)),

          // Tabs start here
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(child: Text('Chats', style: TextStyle(color: Colors.white))),
              Tab(child: Text('Status', style: TextStyle(color: Colors.white))),
              Tab(child: Text('Calls', style: TextStyle(color: Colors.white))),
            ],
          ),

          // AppBar actions
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(value: '1', child: Text('New Groups')),
                PopupMenuItem(value: '2', child: Text('Settings')),
                PopupMenuItem(value: '3', child: Text('Log Out')),
              ],
            ),
            SizedBox(width: 10),
          ],
        ),

        body: TabBarView(
          children: [

            // ================= CAMERA TAB START =================
            Icon(Icons.camera_alt,color: Colors.teal,size: 200,),
            // ================= CAMERA TAB END =================


            // ================= CHATS TAB START =================
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://yt3.googleusercontent.com/OG8lFQzZva7RFLX2gSHhokd6qSd39YarlvN4PhB2n6mgPi4fkxeEnJZaWQ22hToDKafrywlbnQ=s160-c-k-c0x00ffffff-no-rj',
                    ),
                  ),
                  title: Text('Umar Bisharat'),
                  subtitle: Text('Alhamdulillah'),
                  trailing: Text('3:09 pm'),
                );
              },
            ),
            // ================= CHATS TAB END =================


            // ================= STATUS TAB START =================
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 5),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://yt3.googleusercontent.com/OG8lFQzZva7RFLX2gSHhokd6qSd39YarlvN4PhB2n6mgPi4fkxeEnJZaWQ22hToDKafrywlbnQ=s160-c-k-c0x00ffffff-no-rj',
                              ),
                            ),
                          ),
                          title: Text('Umar Bisharat'),
                          subtitle: Text('Alhamdulillah'),
                          trailing: Text('3:09 pm'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 5),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://yt3.googleusercontent.com/OG8lFQzZva7RFLX2gSHhokd6qSd39YarlvN4PhB2n6mgPi4fkxeEnJZaWQ22hToDKafrywlbnQ=s160-c-k-c0x00ffffff-no-rj',
                          ),
                        ),
                      ),
                      title: Text('Umar Bisharat'),
                      subtitle: Text('Alhamdulillah'),
                      trailing: Text('3:09 pm'),
                    ),
                  );
                }
              },
            ),
            // ================= STATUS TAB END =================


            // ================= CALLS TAB START =================
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://yt3.googleusercontent.com/OG8lFQzZva7RFLX2gSHhokd6qSd39YarlvN4PhB2n6mgPi4fkxeEnJZaWQ22hToDKafrywlbnQ=s160-c-k-c0x00ffffff-no-rj',
                    ),
                  ),
                  title: Text('Umar Bisharat'),
                  subtitle: Text(
                    index % 2 == 0
                        ? 'You missed audio call'
                        : 'Call time is 3:27 pm',
                  ),
                  trailing: Icon(
                    index % 2 == 0 ? Icons.call_end : Icons.video_call,
                    color: Colors.red,
                  ),
                );
              },
            ),
            // ================= CALLS TAB END =================
          ],
        ),
      ),
    );
  }
}
