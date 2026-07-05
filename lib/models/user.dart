import 'package:flutter/material.dart';

class User {
  User(this.id, this.firstName, this.lastName, this.iconUrl, this.bgColor);

  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;

  static List<User> generateUsers() {
    return [
      User(1, 'Cecily', 'Trujullo', 'assets/images/one.png', Color(0xFFFDBEC8)),
      User(2, 'Alaya', 'Cordova', 'assets/images/two.png', Color(0xFFFED6C4)),
      User(
        3,
        'Eathan',
        'Sheridan',
        'assets/images/three.png',
        Color(0xFFABE4F2),
      ),
      User(4, 'Justin', 'Moore', 'assets/images/one.png', Color(0xFFFFE5A7)),
      User(5, 'Komal', 'Orr', 'assets/images/two.png', Color(0xFFC3C1E6)),
      User(6, 'Mike', 'Jhon', 'assets/images/three.png', Color(0xFFFD95A2)),
      User(7, 'Wale', 'Adebayo', 'assets/images/one.png', Color(0xFFFDBEC8)),
      User(
        8,
        'Alayameje',
        'Covpla',
        'assets/images/two.png',
        Color(0xFFFED6C4),
      ),
      User(9, 'James', 'Saliu', 'assets/images/three.png', Color(0xFFABE4F2)),
    ];
  }
}
