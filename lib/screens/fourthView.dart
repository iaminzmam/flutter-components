import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';



class FourthView extends StatelessWidget {
  const FourthView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("FourthPage"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () async {
          await Navigator.pushNamed(context, HomeViewRoute);
        },
        child: Icon(
          Icons.home,
          color: Colors.white,
        ),
        ),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey[500],
                    onPressed: () async {
                      await Navigator.popAndPushNamed(context, FirstViewRoute);
                    },
                    child: new Text("goto firstPage"),
              ),

              Text('when you press back from first Page, you will go directly to home page')
            ],
            
          ),
        ),
      );
   
  }
  
}
