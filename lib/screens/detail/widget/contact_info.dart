import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container( 
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '${message.user.firstName}\n${message.user.lastName}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            _buildIcon(Icons.phone),
            SizedBox(width: 10),
            _buildIcon(Icons.video_camera_back),
          ],
        ),
      ],
    );
  }

  Container _buildIcon(var iconData) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.5),
      ),
      child: IconButton(
        icon: Icon(iconData),
        color: Colors.white,
        iconSize: 25,
        onPressed: () {},
      ),
    );
  }
}
