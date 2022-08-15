import 'package:flutter/material.dart';
import 'package:group_chat/const.dart';
import 'package:group_chat/feature/presentation/pages/create_new_group_page.dart';
import 'package:group_chat/feature/presentation/pages/forgot_password_page.dart';
import 'package:group_chat/feature/presentation/pages/login_page.dart';
import 'package:group_chat/feature/presentation/pages/register_page.dart';
import 'package:group_chat/feature/presentation/pages/single_chat_page.dart';

class OngenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case PageConst.forgotPasswordPAge:
        {
          return materialBuilder(widget: ForgotPasswordPage());
        }
      case PageConst.loginPage:
        {
          return materialBuilder(widget: LoginPage());
        }
      case PageConst.registerPage:
        {
          return materialBuilder(widget: RegisterPage());
        }
      case PageConst.createNewGroupPage:
        {
          return materialBuilder(widget: CreateNewGroupPage());
        }
      case PageConst.singleChatPage:
        {
          return materialBuilder(widget: SingleChatPage());
        }

      default:
        return materialBuilder(widget: ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error Page"),
      ),
      body: Center(
        child: Text('Error Page'),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
