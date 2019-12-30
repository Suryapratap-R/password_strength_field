import 'package:flutter/material.dart';

class PasswordStrengthField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(border: Border.all()),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 9,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Something Secure',
                  labelText: 'Password',
                  border: InputBorder.none
                  // labelStyle: TextStyle(

                  // ),

                  ),
            ),
          ),
          Flexible(
            child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[500],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '😀',
                    style: TextStyle(fontSize: 18),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
