import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/user.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _users = Provider.of<List<User>>(context);
    return ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          return Container(
              height: 50,
              color: Colors.grey[(index * 200) % 400],
              child: Center(
                  child: Text(
                      '${_users[index].firstName} ${_users[index].lastName} | ${_users[index].website}')));
        });
  }
}
