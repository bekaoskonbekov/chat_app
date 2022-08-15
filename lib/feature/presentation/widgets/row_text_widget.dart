import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';

class RowTextWidget extends StatelessWidget {
  final String? title;
  final String? title2;
  final VoidCallback? onTap;
  const RowTextWidget({Key? key,  this.title,  this.title2,  this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _rowTextWidget();
  }

  Widget _rowTextWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$title",
        ),
        InkWell(
            onTap: onTap,
            child: Text(
              "$title2",
              style: TextStyle(
                color: greenColor,
              ),
            )),
      ],
    );
  }
}
