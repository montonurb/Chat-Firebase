// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({
    Key? key,
    required this.child,
    required this.onSearch,
  }) : super(key: key);

  final Widget child;
  final void Function(String searchText) onSearch;

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  bool showTextField = false;

  void toggleShow() {
    if (showTextField && controller.text.isNotEmpty) {
      return widget.onSearch(controller.text);
    }
    print("Entrou!");
    setState(() {
      showTextField = !showTextField;
    });

    if (showTextField) focusNode.requestFocus();
  }

  void clear() {
    controller.clear();
    toggleShow();

    FocusScope.of(context).requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: toggleShow,
          icon: const Icon(Icons.search),
        ),
        if (!showTextField)
          widget.child
        else
          Expanded(
            child: TextField(
              controller: controller,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Pesquisar...',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(8.0),
                suffix: InkWell(
                  onTap: clear,
                  child: const Icon(Icons.close),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
