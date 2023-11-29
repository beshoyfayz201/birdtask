
import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(child: FlutterLogo()),
      title: Text(
        'John Smith',
        style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(83, 82, 82, 1),
            fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        '22 October 2023',
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.grey),
      ),
    );
  }
}
