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


Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/Khaledsb/GDG_Tipaza_CodeLab/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
