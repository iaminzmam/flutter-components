import 'package:flutter/material.dart';



class SecondView extends StatelessWidget {
  const SecondView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),   // back button disabled
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pop(context, 'fromsecond');
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        ),
        body: Center(
          child: Text('Back Buttton is disabled! Try floating button'),
        ),
      ),
    );
  }
  
}
