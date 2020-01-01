import 'package:flutter/material.dart';
import './circular_progress_bar.dart';

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
            child: CustomPaint(
              foregroundPainter: CircularProgressPainter(),
              child: Container(
                width: 200,
                height: 200,
                child: Text(
                  '😀',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
