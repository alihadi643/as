import 'package:againwork/work/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class WeightForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight'),
        centerTitle: true,
      ),
      body: Container(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Enter age';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Enter your age',
                  hintText: 'Enter age',
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text(
                'Submit',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('saved'),
                      content: Text('Your age saved!'),
                    );
                  }));
                }
              },
            ),
            FlatButton(
              child: Text(
                'View all Data',
                style: TextStyle(
                  color: Colors.blue[800],
                  decoration: TextDecoration.underline,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return ViewAll();
                    }));
              },
            ),
          ],
        ),
      )),
    );
  }
}
