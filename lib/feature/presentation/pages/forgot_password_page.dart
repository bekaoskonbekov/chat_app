import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/widgets/container_button_widget.dart';
import 'package:group_chat/feature/presentation/widgets/header_widget.dart';
import 'package:group_chat/feature/presentation/widgets/row_text_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_widget_container.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
        child: Column(
          children: [
            HeaderWidget(title: "Forgot Password"),
            SizedBox(
              height: 20,
            ),
            Text(
                'Dont worry ! Just fill in your email and ${AppConst.appName} will send you a link to rest your password'),
            SizedBox(
              height: 20,
            ),
            TextfieldWidgetContainer(
                controller: _emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress),
            SizedBox(
              height: 20,
            ),
            ContainerButtonWidget(title: 'Send Password Reset Email'),
            SizedBox(
              height: 10,
            ),
            RowTextWidget(
              title: 'Remember the account information?',
              title2: "Login",
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, PageConst.loginPage, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
