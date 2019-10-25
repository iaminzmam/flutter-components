import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:fluttercomponents/utils/friends.dart';
import '../pre/crockyIcons.dart' as customIcon;



class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primaryColor: Colors.white,
        ),
      home: Scaffold(
        appBar: new AppBar(
          titleSpacing: 0.0,
          leading: IconButton(icon: Icon(customIcon.MyFlutterApp.back, size: 15, color: Colors.black,),
              onPressed: () async {
                await Navigator.pop(context);
              },),
          title: Text('Me'),
          elevation: 0.0,
        ),
        body: ProfilePage(),
      ),
    );
   
  }
  
}





class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFF33F1A5),
        child: const Icon(Icons.launch), onPressed: () {},),
      backgroundColor: Colors.white,
      body: DefaultTabController(
        initialIndex: 0,
        length: 3, 
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: Container(
              alignment: Alignment.topCenter,
              
              child: AppBar(
                elevation: 1,
                flexibleSpace: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      
                       Row(
                         children: <Widget>[
                           Image.asset('assets/profilepic.png'),
                      
                       
                         ],
                       ),
                       Row(
                         children: <Widget>[
                            Text('Inzamamul Haque', style: TextStyle(fontSize: 22),),
                         ],
                       )
                     
                    ],
                  ),
                ),
                bottom: TabBar(labelPadding: EdgeInsets.only(top: 10, bottom: 5, ),
                      indicatorColor: Color(0xFFFFCF30),
                      tabs: <Widget>[
                        Text('Profile'),
                        Text('Friends'),
                        Text('Contacts')
                      ],
                    ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              FriendsView(),
              Icon(Icons.people),
              Icon(Icons.contacts),
            ],
          ),
        ),
      ),
      
    );
  }
}