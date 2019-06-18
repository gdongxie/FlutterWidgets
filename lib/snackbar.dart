import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Show SnackBar"),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(
                'SnackBar',
                style: TextStyle(color: Colors.cyanAccent),
              ),
              duration: Duration(seconds: 5)));
        });
  }
}
