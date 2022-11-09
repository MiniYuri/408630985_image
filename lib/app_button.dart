import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class DemoTextButton extends StatelessWidget {
  const DemoTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          "click me",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.amber,
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("你按下TextButton"),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            action: SnackBarAction(
              label: 'Toast訊息',
              textColor: Colors.white,
              onPressed: ()=>Fluttertoast.showToast(
                  msg: '你按下SnackBar',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 20.0),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onLongPress: () {
          log("long click", name: "INFO");
        },
      ),
    );
  }
}

class DemoTextButton1 extends StatelessWidget {
  const DemoTextButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          "click me",
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.amber,
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("你按下TextButton"),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            action: SnackBarAction(
              label: 'Toast訊息',
              textColor: Colors.white,
              onPressed: ()=>Fluttertoast.showToast(
                  msg: '你按下SnackBar',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  fontSize: 20.0),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onLongPress: () {
          log("long click", name: "INFO");
        },
      ),
    );
  }
}