import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/widgets/single_item_group.widget.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, PageConst.createNewGroupPage);
        },
        child: Icon(Icons.group_add),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return SingleItemGroupWidget(onTap: () {
                    Navigator.pushNamed(context, PageConst.singleChatPage);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
