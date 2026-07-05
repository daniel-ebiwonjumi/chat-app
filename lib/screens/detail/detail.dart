import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/screens/detail/widget/contact_info.dart';
import 'package:chat_app/screens/detail/widget/detail_app_bar.dart';
import 'package:chat_app/screens/home/widgets/detail_message.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
          DetailAppBar(),
          ContactInfo(message: message),
       
          Expanded(child: DetailMessage()),
        ],
      ),
    );
  }
}
