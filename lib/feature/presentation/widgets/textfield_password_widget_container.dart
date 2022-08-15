import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';

class TextfielPassworddWidgetContainer extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final String? hintText;
  TextfielPassworddWidgetContainer(
      {Key? key,
      this.suffixIcon,
      this.controller,
      this.prefixIcon,
      this.keyboardType, this.hintText})
      : super(key: key);
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color747480.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: true,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            suffixIcon: InkWell(
                onTap: () {
                  isObscureText = !isObscureText;
                },
                child: Icon(isObscureText == true
                    ? Icons.remove_red_eye
                    : Icons.panorama_fish_eye))),
      ),
    );
  }
}
