import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

var users = User.generateUsers();
var me = User(
  0,
  'Daniel',
  'Ebiwonjumi',
  'assets/images/one.png',
  Color(0xFFFDBEC8),
);

class Message {
  Message(
    this.user,
    this.lastMessage,
    this.lastTime, {
    this.isContinue = false,
  });

  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  //fake data, fetch from your DB instead
  static List<Message> generateHomePagesMessages() {
    return [
      Message(
        users[0],
        "Hey there, what's up. I hope you are doing very good",
        '18:32',
      ),
      Message(users[1], "Can I call you back later", '10:32'),
      Message(
        users[2],
        "All of us here are already missing you so I need to ask you that question the other ime to check if you were going to fulfill your promises o us but with the look of things it seems you are not goint to fufill your  promise to us. However, how is life going in London, and when did you even say we are going to see you again or is that you don't plan to come back and see us againb",
        '07:32',
      ),
      Message(
        users[3],
        "Hey can I come to your house and let us talk",
        '12:32',
      ),
      Message(users[4], "We want you to come and play with us ", '14:32'),
      Message(users[5], "How is the weather over there", '20:32'),
      Message(users[6], "Daniel said he will be back tomorrow", '18:45'),
      Message(users[7], "He is not catching up with them ", '04:32'),
      Message(users[8], "She said I should send her regards", '06:32'),
    ];
  }

  static List<Message> generateMessagesFromUser() {
    return [
      Message(
        users[0],
        "Hey there, what's up, I hope you're doing very good",
        '18:32',
      ),
      Message(
        me,
        "Nohing, I'm just chilling and watching Youtub, what about you, how are you doing?",
        '18:33',
      ),
      Message(
        users[0],
        "Same here, I've also been watching Youtube since morning but they are eductaional videos",
        '18:40',
      ),
      Message(
        users[0],
        "It's hard to be productive man",
        '18:41',
        isContinue: true,
      ),
      Message(me, "Yeah I know and I'm also in the same position", '18:42'),
      Message(users[0], "lol, that's funny", '18:50'),
    ];
  }
}


