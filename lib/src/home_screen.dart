import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_mac/src/chats_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        NavigationRail(
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.mode_comment_rounded),
              label: Text(""),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.home_filled),
              label: Text(""),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.insert_comment),
              label: Text(""),
            ),
          ],
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          selectedIndex: _selectedIndex,
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
        Expanded(
          child: IndexedStack(
            index: _selectedIndex,
            children: [
              const ChatScreen(),
              Text("hello"),
              Text("hasd"),
            ],
          ),
        ),
      ]),
    );
  }
}
