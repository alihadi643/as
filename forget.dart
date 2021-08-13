
import 'package:againwork/work/logIn.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ForgotPassword extends StatelessWidget {
  static String id = 'forgot-password';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your Email!!!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'xyz@gmail.com',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                validator: (value) => EmailValidator.validate(value)
                    ? null
                    : "Please enter a valid email",
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Send Email'),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  if (!_formKey.currentState.validate()) {
                    return _formKey.currentState.validate();
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LogIn();
                    }));
                  }
                  // _formKey.currentState.validate();
                  //Navigator.pop(context);
                },
              ),
              RaisedButton(
                  child: Text('Log in'),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LogIn();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
