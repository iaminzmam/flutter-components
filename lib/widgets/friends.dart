import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import '../pre/crockyIcons.dart' as customIcon;



class FriendsView extends StatefulWidget {
  @override
  FriendsState createState() => FriendsState();

}




class FriendsState extends State<FriendsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: new List.generate(20, (index) => _buildRow(index)),
    );
  }

  Widget _buildRow(index) {
  return ListTile(
     
          contentPadding: EdgeInsets.only( bottom: 10, left: 10, right: 10),
          leading: Container(
            width: 40,
            height: 40,
            
            child: ClipRRect(
                borderRadius: new BorderRadius.all(Radius.circular(12)),
                child: Image.asset('assets/inzmam.png', fit: BoxFit.cover,),
            ),
            
          ),
          title: Container(
            padding: EdgeInsets.only(top: 10,bottom: 20),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1))
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text('ok'),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[Text('Inzamamul Haque'),],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(customIcon.MyFlutterApp.slideshare,color: Colors.grey, size: 9,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('200 Contacts', style: TextStyle(fontSize: 12, color: Colors.grey),)],
                    ),
                    
                    
                  ],
                ),
              ),
              
              Container(
                  width: 75,
                  height: 30,
                  child: index%3==0 ? _acceptButton() : _requested(),
              ),
          ],),  
          ),
        );

 }


    Widget _acceptButton() {
      return RaisedButton(
                      shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0), ),
                      textColor: Colors.white,
                      color: Color(0xFFFFCF30),
                      onPressed: () async {
                      },
                      child: new Text("Accept", style: TextStyle(fontSize: 13,),),
                );
    }


    Widget _requested() {
      return Text('Requested', style: TextStyle(color: Colors.grey, fontSize: 12),);
    }


}