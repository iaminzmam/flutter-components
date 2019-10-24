import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';



class SnackbarView extends StatelessWidget {
  const SnackbarView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Snackbar Page"),
        ),
        body: SnackBarPage(),
      );
   
  }
  
}





class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            backgroundColor: Colors.red,    // change
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () async {
                await Navigator.popAndPushNamed(context, HomeViewRoute);
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}