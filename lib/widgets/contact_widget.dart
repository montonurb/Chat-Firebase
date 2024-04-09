import 'package:chat_firebase/widgets/status_contact_widget.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            style: theme.primaryTextTheme.bodyMedium,
            children: [
              TextSpan(
                text: "Contact ",
                style: theme.primaryTextTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const TextSpan(text: "List"),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return StatusContactWidget(
                userName: "Alfredo",
                userImage:
                    "https://avatars.githubusercontent.com/u/32364131?s=400&u=f59d7a1fdeb54f23815d2a91c6d40835f62daad3&v=4",
                isOnline: index.isEven,
              );
            },
            itemCount: 10,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
          ),
        ),
      ],
    );
  }
}
