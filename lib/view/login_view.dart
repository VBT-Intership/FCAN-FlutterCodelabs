import 'package:flutter/material.dart';
import 'package:flutterCodelabs/components/color/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _unfocusedColor = Colors.grey[600];
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _usernameFocusNode.addListener(() {
      setState(() {
        //Redraw so that the username label reflects the focus state
      });
    });
    _passwordFocusNode.addListener(() {
      setState(() {
        //Redraw so that the password label reflects the focus state
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset(
                  "assets/diamond.png",
                  color: kShrineBlack,
                ),
                SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                    color: _usernameFocusNode.hasFocus
                        ? Theme.of(context).accentColor
                        : _unfocusedColor),
              ),
              focusNode: _usernameFocusNode,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: _passwordFocusNode.hasFocus
                        ? Theme.of(context).accentColor
                        : _unfocusedColor),
              ),
              focusNode: _passwordFocusNode,
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  onPressed: () {},
                ),
                RaisedButton(
                  child: Text('NEXT'),
                  onPressed: () {},
                  elevation: 8.0,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
