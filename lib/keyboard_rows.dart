import 'keyboard_buttons.dart';
import 'package:flutter/material.dart';

class KeyboardRows extends StatelessWidget {
  // all buttons are insert in rowsButtons
  KeyboardRows({@required this.rowsButtons, this.onTap});

  final List<String> rowsButtons;
  final CallbackButtonTap onTap;

  @override
  Widget build(BuildContext context) {
    // widget of buttons
    return Row(
      children: buttons(),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }

  List<Widget> buttons() {
    List<Widget> buttons = [];
    // buttons are add in buttons lsit..
    rowsButtons.forEach((String buttonText) {
      buttons.add(
        // import from keyboard_buttons.dart template
        KeyboardButtons(
          buttons: buttonText,
          onTap: onTap,
        ),
      );
    });
    return buttons;
  }
}