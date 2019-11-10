import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:fluttercomponents/screens/TaskAddDetails.dart';
import 'package:fluttercomponents/screens/addContacts.dart';
import 'package:fluttercomponents/screens/addFriend.dart';
import 'package:fluttercomponents/screens/bottomTabNewView.dart';
import 'package:fluttercomponents/screens/firstView.dart';
import 'package:fluttercomponents/screens/homeView.dart';
import 'package:fluttercomponents/screens/undefinedView.dart';
import 'package:fluttercomponents/screens/secondView.dart';
import 'package:fluttercomponents/screens/thirdView.dart';
import 'package:fluttercomponents/screens/fourthView.dart';
import 'package:fluttercomponents/screens/snackbarView.dart';
import 'package:fluttercomponents/screens/bottomTabView.dart';
import 'package:fluttercomponents/screens/profileView.dart';
import 'package:fluttercomponents/screens/TaskCreateView.dart';



Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {

      case HomeViewRoute:
          return MaterialPageRoute(builder: (context)=> HomeView());

      case FirstViewRoute:
          var argument = settings.arguments;
          return MaterialPageRoute(builder: (context)=> FirstView(argument: argument,));
      
      case SecondViewRoute:
          return MaterialPageRoute(builder: (context)=> SecondView());
      
      case ThirdViewRoute:
          return MaterialPageRoute(builder: (context)=> ThirdView());

      case FourthViewRoute:
          return MaterialPageRoute(builder: (context)=> FourthView());

      case SnackbarViewRoute:
          return MaterialPageRoute(builder: (context)=> SnackbarView());

      case BottomTabViewRoute:
          return MaterialPageRoute(builder: (context)=> BottomTabView());
    
      case BottomTabNewViewRoute:
          return MaterialPageRoute(builder: (context)=> BottomTabNewView());
      
      case ProfileViewRoute:
          return MaterialPageRoute(builder: (context)=> ProfileView());

      case TaskCreateViewRoute:
          return MaterialPageRoute(builder: (context)=> TaskCreateView());

      case TaskCreateDetailViewRoute:
          return MaterialPageRoute(builder: (context)=> TaskCreateAddDetailsView());

      case AddFriendViewRoute:
          return MaterialPageRoute(builder: (context)=> AddFriendView());

      case AddContactsViewRoute:
          return MaterialPageRoute(builder: (context)=> AddContactsView());

      default:
          return MaterialPageRoute(builder: (context)=> UndefinedView());
  }
}