import 'package:flutter/material.dart';
import 'custome_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('firstpage', style: TextStyle(fontSize: 36.0)),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0),
          onPressed: () {
            Navigator.of(context).push(CustomeRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text(
            'secondpage',
            style: TextStyle(fontSize: 36.0),
          ),
          elevation: 0.0,
          leading: Container(),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: MaterialButton(
                child: Icon(Icons.navigate_before,
                    color: Colors.white, size: 64.0),
                onPressed: () {
                  Navigator.of(context).pop();
                })));
  }
}
