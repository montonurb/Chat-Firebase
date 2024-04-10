import 'package:chat_firebase/widgets/filter_card_widget.dart';
import 'package:chat_firebase/widgets/search_field_widget.dart';
import 'package:flutter/material.dart';

class FilterBarWidget extends StatelessWidget {
  const FilterBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchFieldWidget(
      onSearch: (String searchText) {},
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterCardWidget(
            isSelected: true,
            label: "Direct Message",
            notificationAmount: 23,
          ),
          SizedBox(width: 8),
          FilterCardWidget(
            isSelected: false,
            label: "Group",
            notificationAmount: 5,
          ),
        ],
      ),
    );
  }
}
