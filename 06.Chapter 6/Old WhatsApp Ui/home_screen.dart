import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Text('Camera'),
            // ================= CAMERA TAB END =================


            // ================= CHATS TAB START =================
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_400_400/B4DZv4HQzKJoAg-/0/1769394214008?e=1773878400&v=beta&t=7Ql5nN-e2jqOPIWA5BUi1B87Ibt9mLvBSvQLcdbL4Gk',
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
                                'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_400_400/B4DZv4HQzKJoAg-/0/1769394214008?e=1773878400&v=beta&t=7Ql5nN-e2jqOPIWA5BUi1B87Ibt9mLvBSvQLcdbL4Gk',
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
                            'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_400_400/B4DZv4HQzKJoAg-/0/1769394214008?e=1773878400&v=beta&t=7Ql5nN-e2jqOPIWA5BUi1B87Ibt9mLvBSvQLcdbL4Gk',
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
                      'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_400_400/B4DZv4HQzKJoAg-/0/1769394214008?e=1773878400&v=beta&t=7Ql5nN-e2jqOPIWA5BUi1B87Ibt9mLvBSvQLcdbL4Gk',
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
