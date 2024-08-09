import 'package:flutter/material.dart';
import 'package:s_template/data/models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  final void Function()? onTap;

  const UserCard({
    super.key,
    required this.user,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 46, // Adjust the radius as needed
          backgroundImage: NetworkImage(user.avatar),
        ),
        title: Text('${user.firstName} ${user.lastName}'),
        subtitle: Text(user.email),
        onTap: onTap,
      ),
    );
  }
}