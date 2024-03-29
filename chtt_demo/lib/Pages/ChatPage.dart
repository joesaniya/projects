import 'package:chtt_demo/CustomUI/CustomCard.dart';
import 'package:chtt_demo/Model/ChatModel.dart';
import 'package:chtt_demo/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({required this.chatmodels, required this.sourchat});
  final List<ChatModel> chatmodels;
  final ChatModel sourchat;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.chatmodels.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: widget.chatmodels[index],
          sourchat: widget.sourchat,
        ),
      ),
    );
  }
}
