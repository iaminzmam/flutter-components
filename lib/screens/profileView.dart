import 'package:flutter/material.dart';
import 'package:fluttercomponents/widgets/contacts.dart';
import 'package:fluttercomponents/widgets/friends.dart';
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
      backgroundColor: Colors.white,
      body: ProfileTabsView(),
      
    );
  }





}





class ProfileTabsView extends StatefulWidget {
  @override
  ProfileTabsState createState() => ProfileTabsState();

}




class ProfileTabsState extends State<ProfileTabsView> with SingleTickerProviderStateMixin {

  TabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3);
    _controller.addListener(_handleTabSelection);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

        initialIndex: 0,
        length: 3, 
        child: Scaffold(
        floatingActionButton: _floatingButton(_currentIndex),
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
                      controller: _controller,
                      onTap: (int index) {
                        // print(index);
                      },
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
            controller: _controller,
            children: <Widget>[
              Icon(Icons.person),
              FriendsView(),
              ContactsView(),
            ],
          ),
        ),
      );

  }

  _handleTabSelection() {
          setState(() {
                    _currentIndex = _controller.index;
                  });
              }

  

  Widget _floatingButton(_currentIndex) {
  return  FloatingActionButton(backgroundColor: Color(0xFF33F1A5),
        child: _currentIndex == 0 ? Icon(Icons.launch) : Icon(Icons.add), onPressed: () {
        });
 }

}