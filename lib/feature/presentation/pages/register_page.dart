import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';
import 'package:group_chat/feature/presentation/widgets/container_button_widget.dart';
import 'package:group_chat/feature/presentation/widgets/header_widget.dart';
import 'package:group_chat/feature/presentation/widgets/row_text_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_password_widget_container.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_widget_container.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordAgainController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _genderController.dispose();
    _dobController.dispose();
    _passwordAgainController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
        child: Column(
          children: [
            HeaderWidget(title: "Registration"),
            SizedBox(
              height: 10,
            ),
            _profileWidget(),
            SizedBox(
              height: 10,
            ),
            TextfieldWidgetContainer(
              keyboardType: TextInputType.text,
              prefixIcon: Icons.person,
              controller: _emailController,
              hintText: 'User Name',
            ),
            SizedBox(
              height: 10,
            ),
            TextfieldWidgetContainer(
              keyboardType: TextInputType.text,
              prefixIcon: Icons.email,
              controller: _usernameController,
              hintText: 'email',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 120,
              endIndent: 120,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            TextfielPassworddWidgetContainer(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              prefixIcon: Icons.lock,
              hintText: 'password',
            ),
            SizedBox(
              height: 10,
            ),
            TextfielPassworddWidgetContainer(
              controller: _passwordAgainController,
              keyboardType: TextInputType.text,
              prefixIcon: Icons.lock,
              hintText: 'password (Again)',
            ),
            SizedBox(
              height: 10,
            ),
            TextfieldWidgetContainer(
              keyboardType: TextInputType.datetime,
              prefixIcon: Icons.email,
              controller: _dobController,
              hintText: 'D.O.B',
            ),
            SizedBox(
              height: 10,
            ),
            TextfieldWidgetContainer(
              keyboardType: TextInputType.text,
              prefixIcon: Icons.email,
              controller: _genderController,
              hintText: 'gender',
            ),
            SizedBox(
              height: 10,
            ),
            ContainerButtonWidget(title: "Register"),
            SizedBox(
              height: 10,
            ),
            RowTextWidget(
              title: 'Do you have already an account?',
              title2: "Login",
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, PageConst.loginPage, (route) => false);
              },
            )
          ],
        ),
      )),
    );
  }

  Widget _profileWidget() {
    return Column(
      children: [
        Container(
          width: 62,
          height: 62,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          // child:  Image.asset("assets/profile.png",fit: BoxFit.cover,),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Add profile photo',
          style: TextStyle(color: greenColor),
        )
      ],
    );
  }
}
