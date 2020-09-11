import 'package:elisee_python/Login.dart';
import 'package:elisee_python/Menu1.dart';
import 'package:elisee_python/Menu2.dart';
import 'package:elisee_python/SignIn.dart';
import 'package:flutter/material.dart';
import 'Menu3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'FRY BG'),
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

    int index = 0;

    List<Widget> menus = [Menu1(), Menu2(), Menu3(), Login(),SignIn()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              color: Colors.blue,
              child: Center(
                child: Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child:  CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("images/image_picker9112751795633386163.jpg"),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    new Text("FRY LE BG",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),

                    )


                  ],
                )
              ),

            ),
            new ListTile(
              title: new Text("Menu 1"),
              leading: new Icon(Icons.camera_enhance),
              onTap: (){
                setState(() {
                  index = 0;
                });
                Navigator.of(context).pop();
              },
            ),

            new ListTile(
              title: new Text("Menu 2"),
              leading: new Icon(Icons.camera_enhance),
              onTap: (){
                setState(() {
                  index = 1;
                });
                Navigator.of(context).pop();
              },
            ),

            new ListTile(
              title: new Text("Menu 3"),
              leading: new Icon(Icons.camera_enhance),
              onTap: (){
                setState(() {
                  index = 2;
                });
                Navigator.of(context).pop();
              },
            ),

            new ListTile(
              title: new Text("Login"),
              leading: new Icon(Icons.person),
              onTap: (){
                setState(() {
                  index = 3;
                });
                Navigator.of(context).pop();
              },
            ),

            new ListTile(
              title: new Text("Sign in"),
              leading: new Icon(Icons.people),
              onTap: (){
                setState(() {
                  index = 4;
                });
                Navigator.of(context).pop();
              },
            ),


          ],
        ),
      ),
      body: menus[index]

    );
  }
}
