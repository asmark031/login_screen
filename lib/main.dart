import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(primaryColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 120, 0, 34),
              width: double.infinity,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 44, color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        shadowColor: Theme.of(context).primaryColor,
                        child: Column(
                          children: [
                            CustomInputBox(
                              inputLabel: "Email or Phone number",
                            ),
                            Divider(
                              height: 0,
                            ),
                            CustomInputBox(
                              inputLabel: "Password",
                            ),
                          ],
                        ),
                      ),
                      CustomFlatButton(buttonLabel: "Forgot Password?"),
                      RoundedCustomButton(
                        backgroundColor: Theme.of(context).primaryColor,
                        buttonLabel: "Login",
                      ),
                      CustomFlatButton(
                          buttonLabel: "Continue with social media"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RoundedCustomButton(
                            backgroundColor: Colors.blue,
                            buttonLabel: "Facebook",
                          ),
                          RoundedCustomButton(
                            backgroundColor: Colors.black,
                            buttonLabel: "Github",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomFlatButton extends StatelessWidget {
  final buttonLabel;

  const CustomFlatButton({
    this.buttonLabel,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Text(
        buttonLabel,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
      ),
    );
  }
}

class CustomInputBox extends StatelessWidget {
  final inputLabel;

  const CustomInputBox({
    this.inputLabel,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: inputLabel,
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          border: InputBorder.none,
          // enabledBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: Colors.grey[200]),
          // ),
        ),
      ),
    );
  }
}

class RoundedCustomButton extends StatelessWidget {
  final backgroundColor;
  final buttonLabel;

  const RoundedCustomButton({Key key, this.backgroundColor, this.buttonLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 50,
      child: FlatButton(
        onPressed: () {}, // Assignment not required since its a UI project
        child: Text(
          buttonLabel,
        ),
        color: backgroundColor,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
