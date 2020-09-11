
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 80.0,),
            new Text("LogIn",
              style: new TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0,),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/image_picker9112751795633386163.jpg"),
            ),
            SizedBox(height: 80.0,),

            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: new TextField(
                decoration: new InputDecoration(
                  hintText: "Pseudo",
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              )
            ),
            SizedBox(height: 40.0,),
            Container(
                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Password",
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                )
            ),

            SizedBox(height: 40.0,),
            Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                    borderRadius: BorderRadius.circular(12.0)
                ),
                margin: EdgeInsets.only(left: 20.0,right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "Connexion",
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: (){
                    print("C'est toujours dems");
                  },
                )
            ),

          ],
        ),
      ),
    );
  }
}