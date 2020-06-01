import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: TollPay(),
  ));
}

class TollPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [const Color(0xFFFF871F), const Color(0xFFFFE500)],
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 302.0,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 40.0,
                            ),
                            Text(
                              "TOLL-PAY",
                              style: TextStyle(
                                fontFamily: 'LemonMilk',
                                fontSize: 60.0,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Making Payments Easy",
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 15.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Image.asset("images/toll.png"),
                      ),
                      FlatButton(
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TollPayLogin()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      FlatButton(
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TollPaySignUp()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TollPayLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [const Color(0xFFFF871F), const Color(0xFFFFE500)],
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 302.0,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            "TOLL-PAY",
                            style: TextStyle(
                              fontFamily: 'LemonMilk',
                              fontSize: 60.0,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Making Payments Easy",
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0.0),
                      width: 150.0,
                      child: Image.asset("images/toll.png"),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                    Container(
                      child: InputForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            width: 300.0,
            height: 60.0,
            padding: EdgeInsets.fromLTRB(100.0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: TextFormField(
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone No.',
                hintStyle: TextStyle(fontFamily: "Montserrat", fontSize: 20.0),
              ),
              validator: (value) {
                if (value.isEmpty || value.length != 10) {
                  return 'Please enter valid number';
                }
                return null;
              },
            ),
          ), //Phone no
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: 300.0,
            height: 60.0,
            padding: EdgeInsets.fromLTRB(102.0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: TextStyle(fontFamily: "Montserrat", fontSize: 20.0),
              ),
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Invalid password';
                }
                return null;
              },
            ),
          ), //Password
          SizedBox(
            height: 40.0,
          ),
          FlatButton(
            child: Container(
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onPressed: () {
              if (_formKey.currentState.validate()) {}
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Forgot password?")
        ],
      ),
    );
  }
}

class TollPaySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [const Color(0xFFFF871F), const Color(0xFFFFE500)],
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 302.0,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            "TOLL-PAY",
                            style: TextStyle(
                              fontFamily: 'LemonMilk',
                              fontSize: 60.0,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Making Payments Easy",
                              style: TextStyle(
                                  fontFamily: 'Montserrat', fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Container(
                      child: InputSignForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputSignForm extends StatefulWidget {
  @override
  _InputSignFormState createState() => _InputSignFormState();
}

class _InputSignFormState extends State<InputSignForm> {
  final _formKeyS = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyS,
      child: Column(
        children: <Widget>[
          Container(
            width: 300.0,
            height: 60.0,
            padding: EdgeInsets.fromLTRB(100.0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Name',
                hintStyle: TextStyle(fontFamily: "Montserrat", fontSize: 20.0),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter valid name';
                }
                return null;
              },
            ),
          ), //Name
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: 300.0,
            height: 60.0,
            padding: EdgeInsets.fromLTRB(100.0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: TextFormField(
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Phone No.',
                hintStyle: TextStyle(fontFamily: "Montserrat", fontSize: 20.0),
              ),
              validator: (value) {
                if (value.isEmpty || value.length != 10) {
                  return 'Please enter valid number';
                }
                return null;
              },
            ),
          ), //Phone no
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: 300.0,
            height: 60.0,
            padding: EdgeInsets.fromLTRB(100.0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Lincense No',
                hintStyle: TextStyle(fontFamily: "Montserrat", fontSize: 20.0),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter lincense number';
                }
                return null;
              },
            ),
          ), //License No
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: 300.0,
            height: 60.0,
            padding: EdgeInsets.fromLTRB(102.0, 8, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: TextStyle(fontFamily: "Montserrat", fontSize: 20.0),
              ),
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Invalid password';
                }
                return null;
              },
            ),
          ), //Password
          SizedBox(
            height: 40.0,
          ),
          FlatButton(
            child: Container(
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onPressed: () {
              if (_formKeyS.currentState.validate()) {}
            },
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
