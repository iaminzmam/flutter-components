import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class FirstView extends StatelessWidget {
  final String argument;
  const FirstView({Key key, this.argument}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 'fromfirst');
        return false;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pop(context, 'fromfirst');
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        ),
        body: Center(
          child: Text('Go back and you will see a Dialog Box.\t HomePage send an argument via Navigation: $argument'),
        ),
      ),
    );
  }
  
}
