import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Circular Profile Avatar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircularProfileAvatar(
                  radius: 100,
                  backgroundColor: Colors.green,
                  borderWidth: 10,
                  initialsText: Text(
                    "AD",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  borderColor: Colors.brown,
                  elevation: 5.0,
                  onTap: () {
                    print('adil');
                  },
                  imageUrl:
                      'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4'),
              CircularProfileAvatar(
                  radius: 120,
                  backgroundColor: Colors.green,
                  borderWidth: 10,
                  initialsText: Text(
                    "AD",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  borderColor: Colors.yellow,
                  elevation: 5.0,
                  foregroundColor: Colors.yellow.withOpacity(0.5),
                  onTap: () {
                    print('adil');
                  },
                  showInitialTextAbovePicture: true,
                  imageUrl:
                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4'),
              CircularProfileAvatar(
                  radius: 70,
                  backgroundColor: Colors.green,
                  initialsText: Text(
                    "AD",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  elevation: 5.0,
              ),

            ],
          ),
        ));
  }
}
