import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Data'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: 3, // the length
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: FlutterLogo(size: 56.0),
                          title: Text('Item 1'),
                          subtitle: Text('Item 1 subtitle'),
                          trailing: Icon(Icons.access_alarm),
                        ),
                      ],
                    ),
                  ),
                );
              })

        ],
      ),
    );
  }
}
