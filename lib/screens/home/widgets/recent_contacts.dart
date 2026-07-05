import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatelessWidget {
  RecentContacts({super.key});
  final contactList = User.generateUsers();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: 25),

      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.search, size: 30, color: Colors.white),
          ),
          Expanded(
            child: ListView.separated(
             
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: contactList[index].bgColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(contactList[index].iconUrl),
              ),
              separatorBuilder: (_, index) => SizedBox(width: 40),
              itemCount: contactList.length,
            ),
          ),
        ],
      ),
    );
  }
}
