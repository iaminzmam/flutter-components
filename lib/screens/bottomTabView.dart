import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pre/crockyIcons.dart' as customIcon;
// import 'package:flutter_svg/flutter_svg.dart';



class BottomTabView extends StatelessWidget {
  const BottomTabView({Key key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("BottomTab Page"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () { },
            backgroundColor: Color(0xFFFFCF30),
            tooltip: 'Increment',
            child: Icon(customIcon.MyFlutterApp.add, size: 25,),
            elevation: 1.0,

          ),
        body: Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            child: Tabs(),
            
          ),
        ),
      );
   
  }
  
}



class Tabs extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {

  int _selectedIndex = 0;
  // String assetName = '../../assets/svg/1.svg';
  

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex  = index;
    });
  }
 @override
 Widget build(BuildContext context) {
    
  //  final Widget svg = new SvgPicture.asset(assetName, color: Colors.red,);
   return Container(
     child:  Scaffold(
        // height: 85,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, // this will be set when a new tab is tapped
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          //  showSelectedLabels: false, //removes title
          //  showUnselectedLabels: false,
          selectedItemColor: Colors.black,
            //removes title
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.person,  size: 30,
                  // color: Colors.red,  //change color of icon
                ),
              title: Container(
                child: Icon(Icons.brightness_1, size: 8, color: Colors.red,),
              ),
              
              
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.add_circle, size: 0, color: Color(0xFFFFCF30),),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              // icon: SvgPicture.asset('assets/svg/1.svg', width:30, fit: BoxFit.contain,),
              icon: Icon(Icons.people),
              title: Container(
                child: Icon(Icons.brightness_1, size: 8, color: Colors.red,),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 15.0,
                  color: Colors.grey[400].withOpacity(.5),
                  // offset: Offset(1.0, 1.0),
                ),
              ],
              //shape: BoxShape.rectangle,
              border: Border.all(color: Colors.white),
              color: Colors.white,
        ),
        
   );
 }
}
