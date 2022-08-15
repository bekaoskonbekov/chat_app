import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/const/colors.dart';

typedef ToolBarIndexController = Function(int index);

class CustomToolBarWidget extends StatefulWidget {
  final ToolBarIndexController toolBarIndexController;
  final int? pageIndex;
  const CustomToolBarWidget(
      {Key? key, required this.toolBarIndexController, this.pageIndex = 0})
      : super(key: key);

  @override
  State<CustomToolBarWidget> createState() => _CustomToolBarWidgetState();
}

class _CustomToolBarWidgetState extends State<CustomToolBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ToolBarItem(
            onTap: () {
              widget.toolBarIndexController(0);
            },
            title: 'Groups',
            borderColor: widget.pageIndex == 0 ? Colors.white : Colors.transparent,
            textColor: widget.pageIndex == 0 ? Colors.white : Colors.black,
          ),
          ToolBarItem(
            onTap: () {
             
                widget.toolBarIndexController(1);
              
            },
            title: 'Users',
            borderColor: widget.pageIndex == 1 ? Colors.white : Colors.transparent,
            textColor: widget.pageIndex == 1 ? Colors.white : Colors.black,
          ),
          ToolBarItem(
            onTap: () {
            
                widget.toolBarIndexController(2);
          
            },
            title: 'Profile',
            borderColor: widget.pageIndex == 2 ? Colors.white : Colors.transparent,
            textColor: widget.pageIndex == 2 ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}

class ToolBarItem extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final Color? borderColor;
  final double? borderWhidth;
  final VoidCallback? onTap;
  const ToolBarItem(
      {Key? key,
      this.title,
      this.textColor,
      this.borderWhidth = 3.0,
      this.onTap,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: borderColor!, width: borderWhidth!),
          ),
        ),
        child: Text(
          title!,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: textColor),
        ),
      ),
    );
  }
}
