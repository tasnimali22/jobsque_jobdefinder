import 'package:flutter/material.dart';

import '../databaseChat/database.dart';


class ChatFacebook extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatFacebook> {
  TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    String text = _controller.text.trim();
    if (text.isNotEmpty) {
      // قم بإدراج الرسالة في قاعدة البيانات
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fasebook'),
          centerTitle: true,
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                child: FutureBuilder<List<Message>>(
                  future: DatabaseHelper.getMessages(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          Message message = snapshot.data![index];
                          return ListTile(
                            title: Text(message.text),
                            subtitle: Text(message.sender),
                            // عرض التاريخ/الوقت هنا إذا كنت تريد
                          );
                        },
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Enter your message...',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
              ),
            ],
            ),
        );
    }
}