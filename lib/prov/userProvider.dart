import 'dart:convert';

import 'package:sample/model/user.dart';

class UserProvider {
  final String _datajson = """
  {
    "users": [
      {
        "first_name": "Douglas",
        "last_name": "Tober",
        "website": "Codetober.com"
      },
      {
        "first_name": "Brad",
        "last_name": "Traversy",
        "website": "traversymedia.com"
      },
      {
        "first_name": "Bucky",
        "last_name": "Roberts",
        "website": "lhventures.us"
      },
      {
        "first_name": "Doug",
        "last_name": "Tober",
        "website": "j5technology.com"
      }
    ]
  }
  """;

  List<User> users;
 
  Future<List<User>> loadUser() async {
    Map<String, dynamic> jsonUserData = jsonDecode(_datajson);
    users = UserList.fromJson(jsonUserData['users']).users;
    print(jsonEncode(users));
    return users;
  }
}