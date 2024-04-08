// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  String userName;
  int unreadChat;
  VoidCallback logout;

  AppBarWidget(
      {Key? key,
      required this.userName,
      required this.unreadChat,
      required this.logout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, $userName!",
                style: theme.primaryTextTheme.bodyMedium,
              ),
              Text(
                "You received",
                style: theme.primaryTextTheme.titleLarge,
              ),
              Text(
                "$unreadChat messages",
                style: theme.primaryTextTheme.headlineSmall,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: logout,
          icon: Icon(
            Icons.logout,
            color: theme.primaryColor,
          ),
        ),
      ],
    );
  }
}
