import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}
var index=0; //images.elementAt(index)
var images = {"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWSOfVKWeUXO1igbOj5_JZ0ZehxDhk0DL2xw&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ74zTRC3H4BRbAIBzAsmY92jlm9fjhcO2uMg&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzaN_yFvIl3P6_1NfEgazvvlCTigyGm_JEiQ&usqp=CAU",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzrJeZd3e2h569QA6PE8AE54z8Erta1e5f3g&usqp=CAU"
              };
var msg ={"HI,THERE!",
          "I'M A CAT!",
          "I LOVE U ,GUYS <3",
          "GIVE ME FISH, PLZ"
          };
var texts={"別碰我的太陽眼鏡",
            "沒看過貓嗎",
            "我看了蝦米???",
            "事情從糟糕變得難以解釋"
          };
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var appTitle = const Text('Image Flutter App');
    //建立app Body物件
    var appBody = Center(
      child: _MyApp(),
    );
    //建立 appBar 物件
    var appBar = AppBar(
      title: appTitle,
      backgroundColor: Color(0xff0000ff),
    );

    //建立 app 物件
    var app = MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: appBody,
        backgroundColor: Colors.white,
      ),
    );
    return app;
  }
}

class _MyApp extends StatelessWidget {
  @override
 // var img =Image.network(images.elementAt(index),height:250,width:250);
  Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(texts.elementAt(index),style: TextStyle(color:Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.left,),
              Container(
                child: ImageButton()//img,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: LastButton(),
                  ),
                  SizedBox(width: 100,),
                  Container(
                    child: NextButton(),
                  ),
                ],

              ),
           ]
        ),

      ],
    );

  }
}

class ImageButton extends StatelessWidget {
  const ImageButton({Key? key}) : super(key: key);
  //const Button(String msg);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
        width: 250,
        height: 250,
        // Inkwell
        child: InkWell(
        radius: 100,
        // display a snackbar on tap
        onTap: () {
          final snackBar = SnackBar(
          content: Text("你按下ImageButton"),
          duration: Duration(seconds: 3),
          backgroundColor: Colors.black87,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          action: SnackBarAction(
          label: msg.elementAt(index),
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
    // implement the image with Ink.image
          child: Ink.image(
            fit: BoxFit.cover,
            image: new NetworkImage(images.elementAt(index)),
          ),
        ),
      ),
    );
  }
}

class LastButton extends StatelessWidget {
  const LastButton({Key? key}) : super(key: key);
  //const Button(String msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          "上一頁",
          style: TextStyle(color: Colors.white,fontSize: 15),
        ),
        style: TextButton.styleFrom(
          fixedSize: const Size(75,35),
          backgroundColor: Colors.green,
        ),
        onPressed: () {
          if(index==0)index=0;
          else index--;
          main();
        },
        onLongPress: () {
          log("long click", name: "INFO");
        },
      ),

    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);
  //const Button(String msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          "下一頁",
          style: TextStyle(color: Colors.white,fontSize: 15),
        ),
        style: TextButton.styleFrom(
          fixedSize: const Size(75,35),
          backgroundColor: Colors.green,
        ),
        onPressed: () {
          if(index==images.length-1)index=images.length-1;
          else index++;
          main();
        },
        onLongPress: () {
          log("long click", name: "INFO");
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

      ),
    );
  }
}



