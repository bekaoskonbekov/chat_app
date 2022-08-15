import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';

class SingleChatPage extends StatefulWidget {
  const SingleChatPage({Key? key}) : super(key: key);

  @override
  State<SingleChatPage> createState() => _SingleChatPageState();
}

class _SingleChatPageState extends State<SingleChatPage> {
  TextEditingController _messageController = TextEditingController();
  @override
  void initState() {
    _messageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group name'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _listMessagesWidget(),
          ),
          Expanded(
            child: _inputMessagesTextFeild(),
          ),
        ],
      ),
    );
  }

  _listMessagesWidget() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Text('');
      },
    );
  }

  _inputMessagesTextFeild() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(80),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.insert_emoticon),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Scrollbar(
                      child: TextField(
                        controller: _messageController,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Type a message',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(Icons.link),
                  Icon(Icons.camera_alt),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: greenColor, borderRadius: BorderRadius.circular(45)),
            child: Icon(
              _messageController.text.isEmpty ? Icons.mic : Icons.send,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
