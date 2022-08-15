import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';
import 'package:group_chat/feature/presentation/pages/register_page.dart';
import 'package:group_chat/feature/presentation/widgets/container_button_widget.dart';
import 'package:group_chat/feature/presentation/widgets/header_widget.dart';
import 'package:group_chat/feature/presentation/widgets/row_text_widget.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_password_widget_container.dart';
import 'package:group_chat/feature/presentation/widgets/textfield_widget_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    @override
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.dispose();
    }

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
        child: Column(
          children: [
            HeaderWidget(title: 'Login'),
            TextfieldWidgetContainer(
              controller: _emailController,
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            TextfielPassworddWidgetContainer(
              controller: _passwordController,
              prefixIcon: Icons.lock,
              keyboardType: TextInputType.emailAddress,
              suffixIcon: Icons.remove_red_eye,
            ),
            SizedBox(
              height: 10,
            ),
            _forgotPasswordWidget(),
            SizedBox(
              height: 10,
            ),
            ContainerButtonWidget(
              title: "Login",
              onTap: () {
                print("Hello login button");
              },
            ),
            SizedBox(
              height: 10,
            ),
            RowTextWidget(
              title: 'Dont have an account?',
              title2: "Register",
              onTap: () {
                Navigator.pushNamed(context, PageConst.registerPage);
              },
            ),
            SizedBox(
              height: 10,
            ),
            _rowGoogleWidget(),
          ],
        ),
      )),
    );
  }

  Widget _forgotPasswordWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(""),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, PageConst.forgotPasswordPAge);
          },
          child: Text(
            "Forgot Password",
            style: TextStyle(
                color: greenColor, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }

  Widget _rowGoogleWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            print("Hello");
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.g_mobiledata,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
