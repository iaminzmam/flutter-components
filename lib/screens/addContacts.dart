import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:fluttercomponents/widgets/contacts.dart';
import 'package:fluttercomponents/widgets/friends.dart';
import '../pre/crockyIcons.dart' as customIcon;




class AddContactsView extends StatelessWidget {
  const AddContactsView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
            leading: IconButton(icon: Icon(customIcon.MyFlutterApp.back, size: 15, color: Colors.black,),
                onPressed: () async {
                  await Navigator.pop(context);
                },),
            title: Text('Add Contacts', style: TextStyle(color: Colors.black),),
            elevation: 0.0,
      ),
      body: AddContacts(),
    );
   
  }
  
}












// Define a custom Form widget.
class AddContacts extends StatefulWidget {
     @override
    AddContactsState createState() => AddContactsState();
}


class AddContactsState extends State<AddContacts> {
  // TaskCreateFormState();
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
      children: new List.generate(20, (index) => _buildRow(index)),
    ),
      
    );
  }

Widget _buildRow(index) {
  bool checkbxVal = false;
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
              
              Container(
                  width: 75,
                  height: 30,
                  child: Checkbox(activeColor: Colors.red,
                    value: checkbxVal,
                    onChanged: (bool value) {
                      setState(() {
                        checkbxVal = value;
                      });
                    },
                  ),
              ),
          ],),  
          ),
        );
}
 


}



