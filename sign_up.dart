import 'package:againwork/work/logIn.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Sign_Up extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validation'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[400],
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bglogIn.jpeg'), fit: BoxFit.cover)),
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Name required';
                    } else if (value.length < 4) {
                      return 'Name greater than 4 Characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Enter first name',
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Name required';
                    } else if (value.length < 4) {
                      return 'Name greater than 4 Characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      hintText: 'Enter last name',
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
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
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 4) {
                      return 'Password greater than 4 Characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter password',
                      suffixIcon: Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _confirmPasswordController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 4) {
                      return 'Password greater than 4 Characters';
                    } else if (value != _passwordController.value.text) {
                      return 'Password do not match';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'confirm password',
                      suffixIcon: Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  obscureText: true,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 40,
                  width: 250,
                  child: RaisedButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
