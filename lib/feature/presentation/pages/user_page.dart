import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/widgets/single_item_user_widget.dart';

class UserPage extends StatelessWidget {
const UserPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return SingleItemUserWidget(onTap: () {});
              },
            ),
          ),
        ],
      ),
    );
  }
}