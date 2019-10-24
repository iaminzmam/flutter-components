import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';



class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text("HomePage"),
        ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey[500],
                    onPressed: () async {
                      var navResult = await Navigator.pushNamed(context, FirstViewRoute, arguments: "Inzamam");
                      if(navResult == 'fromfirst') {
                        showDialog(context: context,
                        builder: (context) => AlertDialog(
                          title: Text('ok'),
                        ));
                      }
                    },
                    child: new Text("send Value"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, SecondViewRoute);
                      
                    },
                    child: new Text("SecondPage"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, ThirdViewRoute);
                    },
                    child: new Text("ThirdPage"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, FourthViewRoute);
                    },
                    child: new Text("fourthPage"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, SnackbarViewRoute);
                    },
                    child: new Text("Snackbar"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, BottomTabViewRoute);
                    },
                    child: new Text("Bottom Tab"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, TabsViewRoute);
                    },
                    child: new Text("Undefined Route"),
            ),
            new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.grey,
                    onPressed: () async {
                      await Navigator.pushNamed(context, BottomTabNewViewRoute);
                    },
                    child: new Text("New BottomTabs"),
            ),
           
          ],
        ),
      ),
    );
  }
  
}
