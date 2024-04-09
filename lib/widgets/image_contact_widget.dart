// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ImageContactWidget extends StatelessWidget {
  double size;
  String urlImage;
  bool isOnline;

  ImageContactWidget(
      {Key? key,
      required this.size,
      required this.urlImage,
      required this.isOnline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: size,
          foregroundImage: NetworkImage(
            urlImage,
          ),
        ),
        Positioned(
          bottom: -2,
          right: -2,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.deepPurple.shade300,
                width: 3,
              ),
              color: isOnline ? Colors.green : Colors.red,
              shape: BoxShape.circle,
            ),
            child: isOnline
                ? const Icon(Icons.check)
                : const Icon(Icons.radio_button_unchecked),
          ),
        ),
      ],
    );
  }
}
