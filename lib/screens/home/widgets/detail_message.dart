import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class DetailMessage extends StatelessWidget {
  DetailMessage({super.key});
  final myId = 0;
  final list = Message.generateMessagesFromUser();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var messageList = List.from(list.reversed);
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.fromLTRB(25, 50, 25, 80),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView.separated(
              reverse: true,
              controller: _scrollController,
              padding: EdgeInsets.zero,
              itemBuilder: (_, index) => messageList[index].user.id == myId
                  ? _buildReceivedText(messageList[index])
                  : _buildSenderText(messageList[index]),
              separatorBuilder: (_, index) => SizedBox(height: 20),
              itemCount: messageList.length,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  TextField(
                    onTap: () {
                      _scrollController.animateTo(
                        0,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    },
                    decoration: InputDecoration(
                      fillColor: kGreyLight.withValues(alpha: 0.2),
                      filled: true,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    bottom: 4,

                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimary,
                      ),
                      child: Icon(Icons.send, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReceivedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message.lastTime,
          style: TextStyle(color: kGreyLight, fontSize: 20),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kPrimaryLight,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Text(
              message.lastMessage,
              style: TextStyle(fontSize: 25, height: 1.5, color: kPrimaryDark),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSenderText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            message.isContinue
                ? SizedBox(width: 80)
                : Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      color: message.user.bgColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(message.user.iconUrl, width: 60),
                  ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kGreyLight.withValues(alpha: 0.05),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800),
                child: Text(
                  message.lastMessage,
                  style: TextStyle(
                    height: 1.5,
                    color: kPrimaryDark,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),

        Text(
          message.lastTime,
          style: TextStyle(color: kGreyLight, fontSize: 20),
        ),
      ],
    );
  }
}
