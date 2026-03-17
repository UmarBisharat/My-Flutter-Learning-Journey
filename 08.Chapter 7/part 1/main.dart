// learning packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
              //  Icon(FontAwesomeIcons.angleDown),
              //  Icon(FontAwesomeIcons.accessibleIcon),
              //  Icon(FontAwesomeIcons.accusoft),
             //   Text("Umar Bisharat is an emerging talent in Pakistan's software engineering landscape, currently carving out a niche as a specialized Mobile Application Engineer.\nBased at the Mehran University of Engineering and Technology (MUET), his trajectory reflects a blend of rigorous academic pursuit and self-taught technical expertise.\nTechnical Prowess & Professional Development: Umar’s primary focus lies in Flutter and Dart, technologies he uses to build cross-platform mobile applications with a strong emphasis on UI/UX animations.\nUnlike many developers who focus only on functionality, Umar prioritizes user experience by creating fluid and high-performance interfaces.\nHis commitment to strong fundamentals is highlighted by completing Harvard’s CS50x, a globally recognized course requiring deep understanding of C, Python, SQL, data structures, and problem solving.\nBy combining these foundations with modern frameworks like Flutter, he has developed a T-shaped skill set with deep expertise in mobile development and broad knowledge of computer science principles.\nLeadership and Community Impact: Umar is also an active member of the student tech community at MUET.\nOrganizational Leadership: As Director of Management for the Software Engineering Society (SES), he helps organize events, manage teams, and support technical initiatives.\nKnowledge Sharing: He has started creating YouTube content where he documents his tech journey and helps beginners understand software development concepts.\nContinuous Learning: Umar participates in global webinars and local hackathons such as those hosted by the MUET ACM-W Student Chapter to stay updated with modern trends like open source and GitHub-based career development.\nFuture Outlook: With strong foundations in computer science, modern mobile development skills, and leadership experience, Umar aims to become a versatile software engineer capable of leading development teams and building high-quality digital products.",maxLines: 2,style: TextStyle(),),
                ReadMoreText(
"Umar Bisharat is an emerging talent in Pakistan's software engineering landscape, currently carving out a niche as a specialized Mobile Application Engineer.\nBased at the Mehran University of Engineering and Technology (MUET), his trajectory reflects a blend of rigorous academic pursuit and self-taught technical expertise.\nTechnical Prowess & Professional Development: Umar’s primary focus lies in Flutter and Dart, technologies he uses to build cross-platform mobile applications with a strong emphasis on UI/UX animations.\nUnlike many developers who focus only on functionality, Umar prioritizes user experience by creating fluid and high-performance interfaces.\nHis commitment to strong fundamentals is highlighted by completing Harvard’s CS50x, a globally recognized course requiring deep understanding of C, Python, SQL, data structures, and problem solving.\nBy combining these foundations with modern frameworks like Flutter, he has developed a T-shaped skill set with deep expertise in mobile development and broad knowledge of computer science principles.\nLeadership and Community Impact: Umar is also an active member of the student tech community at MUET.\nOrganizational Leadership: As Director of Management for the Software Engineering Society (SES), he helps organize events, manage teams, and support technical initiatives.\nKnowledge Sharing: He has started creating YouTube content where he documents his tech journey and helps beginners understand software development concepts.\nContinuous Learning: Umar participates in global webinars and local hackathons such as those hosted by the MUET ACM-W Student Chapter to stay updated with modern trends like open source and GitHub-based career development.\nFuture Outlook: With strong foundations in computer science, modern mobile development skills, and leadership experience, Umar aims to become a versatile software engineer capable of leading development teams and building high-quality digital products.",
                 trimLines: 2,
                 trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                  lessStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                  style: TextStyle(color: Colors.brown),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
