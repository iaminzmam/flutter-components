import 'package:flutter/material.dart';



class UndefinedView extends StatelessWidget {
  final String name;
  const UndefinedView({Key key, this.name}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('if a Route is not defined. then, will be refered to this... Undefined Page'),
      ),
    );
  }
  
}
