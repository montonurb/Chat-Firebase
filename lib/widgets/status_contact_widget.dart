// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

import 'package:chat_firebase/widgets/image_contact_widget.dart';

class StatusContactWidget extends StatelessWidget {
  final String userImage;
  final String userName;
  final bool isOnline;

  StatusContactWidget({
    Key? key,
    required this.userName,
    required this.userImage,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Column(
      children: [
        ImageContactWidget(
          size: size.width * 0.09,
          urlImage: userImage,
          isOnline: isOnline,
        ),
        const SizedBox(height: 12),
        Text(
          userName,
          style: theme.primaryTextTheme.bodyMedium,
        ),
      ],
    );
  }
}
