import 'package:flutter/material.dart';
class Carder extends StatefulWidget {
  @override
  _CarderState createState() => _CarderState();
}

class _CarderState extends State<Carder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage("image/profile.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Text("TEJASG007",
              style: TextStyle(
                letterSpacing:2.7,
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 40,
          ),
          Card(
            child: Container(
              margin: EdgeInsets.only(left: 40,right:10),
              child: ListTile(
                leading:Icon(Icons.person,size: 40,),
                  title:
                  Text("Tejas Pramod Gathekar",
                      style: TextStyle(
                        fontSize: 22,
                      )),
              ),
              height: 50,
              width: 350,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Card(
            child: Container(

              margin: EdgeInsets.only(left: 40,right:10),
              child: ListTile(
                leading:Icon(Icons.call,size: 40,),
                title:
                Text("+91 9146780318",
                    style: TextStyle(
                      fontSize: 22,letterSpacing: 5.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              height: 50,
              width: 350,
            ),
          )
        ],
      ),
    );
  }
}
