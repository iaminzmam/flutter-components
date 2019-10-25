import 'package:flutter/material.dart';
import '../pre/crockyIcons.dart' as customIcon;
import 'package:flutter_svg/svg.dart';



class BottomTabNewView extends StatelessWidget {
  const BottomTabNewView({Key key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Bottom App Bar Page"),
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
  

  void _onNavButtonTapped(int index) {
  setState(() {
    _selectedIndex  = index;
    });
  }
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFFCF30),
        child: const Icon(customIcon.MyFlutterApp.add), onPressed: () {},),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Container(
          height: 60,
          child: new Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Positioned(
                      child: IconButton(
                        icon: SvgPicture.asset(
                                'assets/me.svg',
                                width: 25,
                                fit: BoxFit.contain,
                                color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                          
                          ), 
                        onPressed: () {
                          _onNavButtonTapped(0);
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Icon(Icons.brightness_1, size: 5, color: Colors.red,),
                    ),
                  ],
                ),

          Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Positioned(
                      child: IconButton(
                        icon: SvgPicture.asset(
                                'assets/people.svg',
                                width: 25,
                                fit: BoxFit.contain,
                                color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                          
                          ), 
                        onPressed: () {
                          _onNavButtonTapped(1);
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Icon(Icons.brightness_1, size: 5, color: Colors.red,),
                    ),
                  ],
                ),
         ],
        ),
        ),
      ),
    );
  }
}
