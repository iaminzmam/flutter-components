import 'package:flutter/material.dart';



class TabsView extends StatelessWidget {
  const TabsView({Key key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabss Page'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFCF30),
        // foregroundColor: Colors.yellow,
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
        ),
        // shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
    );
   
  }
  
}


class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  
  final List<FABBottomAppBarItem> items;
  final ValueChanged<int> onTabSelected;

  const FABBottomAppBar({Key key, this.items, this.onTabSelected}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  
  // TODO: build method here
}