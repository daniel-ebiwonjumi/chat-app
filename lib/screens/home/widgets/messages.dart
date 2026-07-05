import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/models/message.dart';
import 'package:chat_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  Messages({super.key});
  final messagesList = Message.generateHomePagesMessages();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => _buildMessage(context, index),
      separatorBuilder: (_, index) => SizedBox(height: 30),
      itemCount: messagesList.length,
    );
  }

  Widget _buildMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(message: messagesList[index]),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: messagesList[index].user.bgColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(messagesList[index].user.iconUrl, width: 150),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messagesList[index].user.firstName} ${messagesList[index].user.lastName}',
                      style: TextStyle(
                        fontSize: 22,
                        color: kPrimaryDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      messagesList[index].lastTime,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
