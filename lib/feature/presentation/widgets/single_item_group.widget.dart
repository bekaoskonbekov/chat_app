import 'package:flutter/material.dart';

class SingleItemGroupWidget extends StatelessWidget {
  final VoidCallback onTap;
  const SingleItemGroupWidget({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(50)),
                child: Text(''),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      SizedBox(height: 10,),
                  Text(
                    'Group Name',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'resent msg',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.7),
                        fontWeight: FontWeight.w500),
                  ),
                    SizedBox(height: 10,),
                  Divider(
                    thickness: 1.50,
                    color: Colors.black,
                  )
                ]),
              )
            ],
          )
        ]),
      ),
    );
  }
}
