import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';
import 'package:group_chat/feature/presentation/widgets/container_button_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_widget_container.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _statusController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _statusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
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
            'Remove profile photo',
            style: TextStyle(
                color: greenColor, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          TextfieldWidgetContainer(
            controller: _nameController,
            hintText: 'name',
            prefixIcon: Icons.person,
          ),
          SizedBox(
            height: 10,
          ),
          TextfieldWidgetContainer(
            hintText: 'email',
            prefixIcon: Icons.email,
          ),
          SizedBox(
            height: 10,
          ),
          TextfieldWidgetContainer(
            controller: _statusController,
            hintText: 'status',
            prefixIcon: Icons.signal_wifi_statusbar_4_bar,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1.50,
          ),
          SizedBox(
            height: 10,
          ),
          ContainerButtonWidget(title: 'Update Profile')
        ],
      ),
    );
  }
}
