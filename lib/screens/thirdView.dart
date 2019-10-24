import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';



class ThirdView extends StatelessWidget {
  const ThirdView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ThirdPage"),
          automaticallyImplyLeading: false,   // removes back icon from appbar
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
                      await Navigator.pushNamed(context, FirstViewRoute);
                    },
                    child: new Text("goto firstPage"),
              ),

              Text('this page contains Stacks in Sequence.  when you try to go back, from First page. you will be going in sequence.')
            ],
            
          ),
        ),
      );
   
  }
  
}
