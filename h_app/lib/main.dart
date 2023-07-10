import 'package:flutter/material.dart';
import 'package:h_app/message.dart';
import 'package:h_app/home_page.dart';
import 'package:h_app/notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShowIcons(),
    );
  }
}

class ShowIcons extends StatefulWidget {
  const ShowIcons({Key? key}) : super(key: key);

  @override
  State<ShowIcons> createState() => _ShowIconsState();
}

class _ShowIconsState extends State<ShowIcons> {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    const MyHomePage(),
    NotificationApp(),
    MessageApp(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blueGrey,
            ),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.blueGrey,
            ),
            label: 'Notifications',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.blueGrey,
            ),
            label: 'Messages',
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
