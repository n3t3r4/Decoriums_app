import 'package:decoracao_app/pages/userPage.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class supportPage extends StatefulWidget{
  const supportPage({super.key});

  @override
  State<supportPage> createState() => _supportPage();

}

class Message {
  final String text;
  final bool isSentByMe;
  final DateTime date;

  const Message({required this.text, required this.date, required this.isSentByMe});
}


class _supportPage extends State<supportPage>{

  List<Message> messages = [
    Message(text: 'Can you help me?', date: DateTime.now().subtract(const Duration(days: 10, minutes: 3)), isSentByMe: true),
    Message(text: 'Hello, how can I help you?', date: DateTime.now().subtract(const Duration(days: 10, minutes: 2)), isSentByMe: false),
    Message(text: 'Hi, I was looking for chairs', date: DateTime.now().subtract(const Duration(days: 5, minutes: 1)), isSentByMe: true),
    Message(text: 'Sure, any color?', date: DateTime.now().subtract(const Duration(days: 3, minutes: 1)), isSentByMe: false),

    
  ].reversed.toList();

  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: const EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: Colors.black54, 
                    child: Padding(
                      padding: const EdgeInsets.all(8), 
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
               ),
              ),
              itemBuilder: (context, Message message) => 
              Align(
                alignment: message.isSentByMe
                ? Alignment.centerRight
                : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12), 
                    child: Text(message.text),),
                ),
              ),
            ),
          ), 
            Container(
              
              color: Colors.grey.shade300,
              child: TextField(
                controller: _messageController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: 'Type your message here...'
                ),
                onSubmitted: (text) {

                  
                  final message = Message(
                    text: text, 
                    date: DateTime.now(), 
                    isSentByMe: true,);

                    setState(() => messages.add(message),);
                    _messageController.clear();
                },
              ),
            ),
        ],
      )
    );
  }

}