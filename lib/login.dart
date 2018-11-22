import 'package:flutter/material.dart';
import 'settings.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    final emailController= TextEditingController();
    final passwordController= TextEditingController(); 

    final logo = Hero(
      tag: "Hero",
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset(
          "images/gg.png",
          height: 130.0,
        ),
      ),
    );

    final email = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
          hintText: "Your Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 22.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final password = TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Your Password",
          contentPadding: EdgeInsets.fromLTRB(20.0, 22.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        color: Colors.red[800],
        elevation: 10.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 50.0,

          onPressed: () {
            print(emailController.text);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
          // color: Colors.lightBlueAccent,

          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[new Icon(Icons.account_circle), new Text("Login")],
        ),
      ),
      body: 
    
      new Container(
        
        padding: const EdgeInsets.all(25.0),
        child: new ListView(
          
          shrinkWrap: true,
          children: <Widget>[
            logo,
            SizedBox(height: 20.0),
            email,
            SizedBox(
              height: 15.0,
            ),
            password,
            SizedBox(
              height: 15.0,
            ),
            loginButton
          ],
        ),
      ),
    );
  }
}
