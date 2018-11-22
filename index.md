## Welcome to this Tutorial : CodeLab to create a simple mobile application (demo) with Flutter 

Our application will contain 2 screens.

  1. First screen  : Login Page
  2. ListView 

  Let's start , 

- First create a new project " CodeLab".

![1](https://user-images.githubusercontent.com/10439601/48485499-56a0b800-e819-11e8-933b-4a9a064a88ae.png)


We will have the file that contains our project

![2](https://user-images.githubusercontent.com/10439601/48486474-f0696480-e81b-11e8-9a89-61215e12fd4b.png)


- erase all the code in the page


![3](https://user-images.githubusercontent.com/10439601/48486718-a59c1c80-e81c-11e8-888a-b9af3b1c27d5.png)


 - add this code :
 
```markdown
 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

```

- in the lib folder we will create a new file for the login page "login.dart"

![4](https://user-images.githubusercontent.com/10439601/48487166-b26d4000-e81d-11e8-82bf-dfa90ce2450d.png)


 lets create our page :
 
 
```markdown

 class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
```

Now we add th Appbar :

```markdown

 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Icon(Icons.account_circle),
            new Text("login"),
          ],
        ),
      ),
      
    );
  }
```
Result :


![screenshot_1542873171](https://user-images.githubusercontent.com/10439601/48888933-83b22380-ee34-11e8-8f01-63b2d150926b.png)


new we add our components :

Logo , 2 textfield and button .

befor that we add listView :

```markdown
  body: new Container(
        padding: const  EdgeInsets.all(10.0),
        child: new ListView(
          shrinkWrap: true,
          children: <Widget>[
            
          ],
        ),
      ),
```
lets start with components :

### Logo
```markdown
 
    final logo = Image.asset(
      "images/google.png",
      height: 90.0,
    );
```
### Email textField 

```markdown
 
    final email = TextFormField(
   
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
          hintText: "Your Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 22.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
```

### Password Textfield 

```markdown
 
   final password = TextFormField(
      
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Your Password",
          contentPadding: EdgeInsets.fromLTRB(20.0, 22.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
```

### Button 

```markdown
 
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
           
           
          },
        
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
```
add this components to the  listview :

```markdown
new ListView(
          shrinkWrap: true,
          children: <Widget>[
            logo,
             SizedBox(height: 50.0),
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
```

Result :


![screenshot_1542874293](https://user-images.githubusercontent.com/10439601/48889627-c543ce00-ee36-11e8-8956-444c306e0c0f.png)


to retrieve the contents of a field we will create a controller.

```markdown
    final emailController= TextEditingController();
    final passwordController= TextEditingController(); 
```

now lets assign the controllers to the fields :

```markdown

    final email = TextFormField(
      controller: emailController,
      //
      //
      //
      //
    );
    
  final password = TextFormField(
       controller: passwordController,
       //
       //
       //
    );   
    
```

now we get the content from the field :

```markdown

 onPressed: () {
           print(emailController.text);
           print(passwordController.text);
           
          },
 ```
add Nivagation to the second screen :

```markdown

 onPressed: () {
           print(emailController.text);
           print(passwordController.text);
           
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
           
          },
 ```

lets creat the new screen  settings.dart:

```markdown
import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
  
 ```
we add listview and appbar :

```markdown
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Settings"),
      ),
      body: new ListView(
        children: <Widget>[

      ],)
      ,
    );
  
  ``` 
 now we add the content to our list :
 
 
 ```markdown
 
  new Row(
               children: <Widget>[
                 new Expanded(
                   flex: 1,
                   child: new Icon(Icons.wifi),
                 ),
                  new Expanded(
                   flex: 3,
                   child: new Text("Wifi Settings")
                 ),
                  new Expanded(
                   flex: 1,
                   child: new Icon(Icons.wifi),
                 )
               ],
             )
 
  ``` 
 
![screenshot_1542876336](https://user-images.githubusercontent.com/10439601/48891392-89f7ce00-ee3b-11e8-850a-84bc2fa89894.png)

Now we add some elements and organize our code :

 ```markdown
Row newElement(icon, text) {
  return   new Row(
               children: <Widget>[
                 new Expanded(
                   flex: 1,
                   child: new Icon(icon),
                 ),
                  new Expanded(
                   flex: 3,
                   child: new Text(text)
                 ),
                  new Expanded(
                   flex: 1,
                   child: new Icon(Icons.open_in_new),
                 )
               ],
             );
}
  ``` 
 
 ```markdown
  new ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          newElement(Icons.network_wifi, "Wifi Settings"),
          newElement(Icons.bluetooth, "Bluetooth Settings"),
          newElement(Icons.battery_alert, "Battery Settings"),
          newElement(Icons.signal_cellular_4_bar, "SIM Settings"),
          newElement(Icons.account_circle, "Account Settings"),
          newElement(Icons.accessibility, "Accessibility Settings"),
          newElement(Icons.system_update, "System Settings"),
      ],)
   ``` 
   
   
![screenshot_1542876941](https://user-images.githubusercontent.com/10439601/48891873-d8599c80-ee3c-11e8-876b-edd1b5b2039c.png)

   
   
  lets add some modifications :
  
   ```markdown
  Padding newElement(icon, text) {
  return   Padding(
    padding: const EdgeInsets.all(10.0),
    child: new Row(
                 children: <Widget>[
                   new Expanded(
                     flex: 1,
                     child: new Icon(icon),
                   ),
                    new Expanded(
                     flex: 3,
                     child: new Text(text)
                   ),
                    new Expanded(
                     flex: 1,
                     child: new Icon(Icons.open_in_new),
                   )
                 ],
               ),
  );
}
  ```  
 

![screenshot_1542877014](https://user-images.githubusercontent.com/10439601/48891931-0d65ef00-ee3d-11e8-8b4f-01966800b775.png)


 #Thank youuuuuuuuuuuuuuu .
 
 

- [Twitter : @Khaled_Sebti](https://twitter.com/Khaled_Sebti)
- [LinkedIn : Khaled Sebti](https://www.linkedin.com/in/khaled-sebti-86a7799b/)
- [Github : khaledsb](https://github.com/Khaledsb)
- [Email : sebti.khaled1@gmail.com]
