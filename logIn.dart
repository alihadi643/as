import 'package:againwork/work/forget.dart';
import 'package:againwork/work/form.dart';
import 'package:againwork/work/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LogIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Log in'),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[400],
        body: Container(
          /*decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/weight.png'),
                  fit: BoxFit.fill)),*/
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/weight.png'),
                        radius: 100,
                      ),
                      SizedBox(
                        height: 15,
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
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length < 4) {
                            return 'Password greater than 4 Characters';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter password',
                            suffixIcon: Icon(Icons.security),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          /*RichText(
                            text: TextSpan(
                                text: 'Forget Password?',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // To Do
                                  })),*/
                          FlatButton(
                            child: Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: Colors.blue[800],
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ForgotPassword();
                              }));
                            },
                          ),

                          /*InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Sign_Up();
                            }));
                          },
                        )*/
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RaisedButton(
                                  child: Text('Log in'),
                                  color: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  onPressed: () {
                                    if (!_formKey.currentState.validate()) {
                                      return _formKey.currentState.validate();
                                    } else
                                      return Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return WeightForm();
                                      }));
                                  }),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RaisedButton(
                                  child: Text('Sign Up'),
                                  color: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  onPressed: () {
                                    return Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Sign_Up();
                                    }));
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
