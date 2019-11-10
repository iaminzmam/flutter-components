import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import '../pre/crockyIcons.dart' as customIcon;



class ContactsView extends StatefulWidget {
  @override
  ContactsState createState() => ContactsState();

}




class ContactsState extends State<ContactsView> {
  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children: new List.generate(20, (index) => _buildRow(index)),
    );
  }

  Widget _buildRow(index) {

  return ListTile(
          
          contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          leading: Container(
            width: 40,
            height: 40,

            child: ClipOval(
                    child: Image.asset(
                        'assets/friendspic.png',
                        fit: BoxFit.cover,
                    ),
                ),
            
            //     // Image.asset('assets/friendspic.png', ),

          
          ),
          title: Container(
            padding: EdgeInsets.only(left: 10,bottom: 5),
            
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
                      children: <Widget>[Text('Inzamamul Haque', style: TextStyle(fontSize: 14),),],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        
                        Text('inzy.work@gmail.com', style: TextStyle(fontSize: 12, color: Colors.grey),)],
                    ),
                    
                    
                  ],
                ),
              ),
              
              // Container(
              //     width: 75,
              //     height: 30,
              //     child: null,
              // ),
          ],),  
          ),
        );

 }


    

}