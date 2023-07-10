import 'package:flutter/material.dart';

class MessageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessageScreen(),
    );
  }
}

class MessageScreen extends StatelessWidget {
  final List<String> messages = [
    'Message 1',
    'Message 2',
    'Message 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text('Sender ${index + 1}'),
            subtitle: Text(messages[index]),
          );
        },
      ),
    );
  }
}
