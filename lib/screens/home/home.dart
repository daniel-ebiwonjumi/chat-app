import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/screens/home/widgets/messages.dart';
import 'package:chat_app/screens/home/widgets/recent_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Chat with\nyour friends',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
             
              ),
            ),
            RecentContacts(),
            Messages(),
          ],
        ),
      ),
    );
  }
}
