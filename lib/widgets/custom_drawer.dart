import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0, bottom: 45),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.green.shade200),
        width: 250,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListText(
              txt: 'Home',
              onTap: () {},
              icon: Icons.home,
            ),
            ListText(
              txt: 'Schedule Fees',
              onTap: () {},
              icon: Icons.featured_play_list,
            ),
            ListText(
              txt: 'Student Profile',
              onTap: () {},
              icon: Icons.person,
            ),
            ListText(
              txt: 'Student Courses',
              onTap: () {},
              icon: Icons.chat_bubble_outline_rounded,
            ),
            ListText(
              txt: 'Notice Board',
              onTap: () {},
              icon: Icons.book_online,
            ),
            ListText(
              txt: 'Contact Us',
              onTap: () {},
              icon: Icons.contact_mail_outlined,
            ),
            ListText(
              txt: 'Certificate',
              onTap: () {},
              icon: Icons.pages_rounded,
            ),
            ListText(
              txt: 'Staff Records',
              onTap: () {},
              icon: Icons.fiber_manual_record_rounded,
            ),
            ListText(
              txt: 'Survey Portal',
              onTap: () {},
              icon: Icons.local_laundry_service,
            ),
            ListText(
              txt: 'Attendance Report',
              onTap: () {},
              icon: Icons.report,
            ),
          ],
        ),
      ),
    );
  }
}

// txt

class ListText extends StatefulWidget {
  const ListText({Key? key, this.icon, required this.txt, required this.onTap})
      : super(key: key);

  final IconData? icon;
  final String txt;
  final Function()? onTap;

  @override
  _ListTextState createState() => _ListTextState();
}

class _ListTextState extends State<ListText> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon),
      onTap: (widget.onTap),
      title: Text(
        widget.txt,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
