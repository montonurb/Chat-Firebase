// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FilterCardWidget extends StatelessWidget {
  final bool isSelected;
  final String label;
  final int notificationAmount;
  const FilterCardWidget({
    Key? key,
    required this.isSelected,
    required this.label,
    required this.notificationAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.yellow.shade200 : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              label,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: isSelected ? Colors.black : Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 8),
            if (notificationAmount > 0) ...[
              Badge.count(
                backgroundColor: Colors.black,
                count: notificationAmount,
                textColor: isSelected ? Colors.white : Colors.grey,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
