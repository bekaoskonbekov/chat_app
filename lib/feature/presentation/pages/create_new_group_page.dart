import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';
import 'package:group_chat/feature/presentation/widgets/container_button_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_widget_container.dart';

class CreateNewGroupPage extends StatefulWidget {
  const CreateNewGroupPage({Key? key}) : super(key: key);

  @override
  State<CreateNewGroupPage> createState() => _CreateNewGroupPageState();
}

class _CreateNewGroupPageState extends State<CreateNewGroupPage> {
  TextEditingController _groupNameController = TextEditingController();

  @override
  void dispose() {
    _groupNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new group'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 62,
              width: 62,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Text(''),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add Group Image',
              style: TextStyle(
                  color: greenColor, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            TextfieldWidgetContainer(
              controller: _groupNameController,
              hintText: 'name',
              prefixIcon: Icons.person,
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1.50,
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(
              height: 10,
            ),
            ContainerButtonWidget(title: 'Group New Create'),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  'By clicking Create New Group , you agree to the ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: greenColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w800),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
