import 'package:chat_firebase/widgets/app_bar_widget.dart';
import 'package:chat_firebase/widgets/contact_widget.dart';
import 'package:chat_firebase/widgets/image_contact_widget.dart';
import 'package:chat_firebase/widgets/status_contact_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

void logout() {}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: AppBarWidget(
                userName: "Bruno",
                unreadChat: 48,
                logout: logout,
              ),
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 8, top: 8, bottom: 16),
                child: ContactWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
