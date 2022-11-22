import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationHelper extends StatefulWidget {
  const VerificationHelper({Key? key}) : super(key: key);

  @override
  State<VerificationHelper> createState() => _VerificationHelperState();
}

class _VerificationHelperState extends State<VerificationHelper> {
  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
      keyboardType: TextInputType.number,
      underlineColor: Colors.amber, // If this is null it will use primaryColor: Colors.red from Theme
      length: 4,
      cursorColor: Colors.blue, // If this is null it will default to the ambient
      // clearAll is NOT required, you can delete it
      // takes any widget, so you can implement your design
      clearAll: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'clear all',
          style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
        ),
      ),
      onCompleted: (String value) {
        setState(() {
          //_code = value;
        });
      },
      onEditing: (bool value) {
        setState(() {
         // _onEditing = value;
        });
        //if (!_onEditing) FocusScope.of(context).unfocus();
      },
    );
  }
}
