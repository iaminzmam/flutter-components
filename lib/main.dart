import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
// import 'package:testroute/screens/undefinedView.dart';
import 'router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Type Routes',
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
      // onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => UndefinedView(name: settings.name)),
    );
  }
}
