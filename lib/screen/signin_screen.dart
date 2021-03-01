import 'package:CreativeWork2/model/mysignin.dart';
import 'package:CreativeWork2/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/signInScreen';
  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignInScreen> {
  _Controller con;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String error;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding:
          false, //added to not make background push up with keyboard
      appBar: AppBar(
        title: Text('Flick View', style: Theme.of(context).textTheme.headline6),
        backgroundColor: Colors.red[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage("images/movie2.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Please sign in',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    error == null
                        ? SizedBox(
                            height: 1.0,
                          )
                        : Text(
                            error,
                            style: TextStyle(fontSize: 16.0, color: Colors.red),
                          ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            fontFamily: 'Jomhuria', fontSize: 28.0, color: Colors.white),
                        hintText: 'Enter username',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                      autocorrect: false,
                      onSaved: con.saveUsername,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontFamily: 'Jomhuria', fontSize: 28.0, color: Colors.white),
                        hintText: 'Enter password',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                      obscureText: true,
                      autocorrect: false,
                      validator: con.validatePassword,
                      onSaved: con.savePassword,
                    ),
                    RaisedButton(
                      color: Colors.red[900],
                      onPressed: con.signIn,
                      child: Text(
                        'Sign In',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Controller {
  _SignInState state;
  _Controller(this.state);
  UserRecord userRecord = UserRecord();

  void signIn() {
    if (!state.formKey.currentState.validate()) return;

    state.formKey.currentState.save();

    var user = UserRecord.fakeDB.firstWhere(
        (element) =>
            element.username == userRecord.username &&
            element.password == userRecord.password,
        orElse: () => null);

    if (user == null) {
      state.render(() => state.error = 'not a valid login');
    } else {
      state.render(() => state.error = null);
      Navigator.pushNamed(state.context, HomeScreen.routeName, arguments: user);
    }
  }

  String validatePassword(String value) {
    if (value.length < 1) return 'too short of a password';
    return null;
  }

  void saveUsername(String value) {
    userRecord.username = value;
  }

  void savePassword(String value) {
    userRecord.password = value;
  }
}
