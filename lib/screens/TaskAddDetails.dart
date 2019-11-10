import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:fluttercomponents/widgets/contacts.dart';
import 'package:fluttercomponents/widgets/friends.dart';
import '../pre/crockyIcons.dart' as customIcon;




class TaskCreateAddDetailsView extends StatelessWidget {
  const TaskCreateAddDetailsView({Key key}) : super(key:key);

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
            title: Text('Create New', style: TextStyle(color: Colors.black),),
            elevation: 0.0,
      ),
      body: AddDetails(),
    );
   
  }
  
}












// Define a custom Form widget.
class AddDetails extends StatefulWidget {
     @override
    AddDetailsState createState() => AddDetailsState();
}


class AddDetailsState extends State<AddDetails> {
  // TaskCreateFormState();
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(40),
              child: Column(
              children: <Widget>[
              Row(
                children: <Widget>[
                Icon(Icons.launch, color: Color(0xFF33F1A5),),
              ],),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('More From Minimal Apps', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ),
              ],),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text('Nice work, but I think the filter sidebar is a little bit big. For an inspiration site, I recommend people want a horizontal filter and full-width projects with at least 4 - 5 cols.',
                      style: TextStyle(fontSize: 16,color: Colors.grey),),)
              ],),
            ],),
            ),
          Divider(color: Colors.grey,),
          Container(
            margin: EdgeInsets.all(40),
              child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 10),
                          child: Text('Add Attachments', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ),
                    ],),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 10),
                          child: new OutlineButton(
                                    child: new Text("+ Add New", style: TextStyle(color: Color(0xFF33F1A5)),),
                                    onPressed: null,
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
                                  ),
                          ),
                    ],),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 10),
                          child: Text('Assign To:', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ),
                    ],),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 10, right: 16),
                          child: new RaisedButton(
                                    child: new Text("Me", style: TextStyle(color: Colors.white),),
                                    color: Colors.grey,
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0)),
                                    onPressed: () {},
                                  ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 15, bottom: 10),
                            child: new RaisedButton(
                                      child: new Text("Friend", style: TextStyle(color: Colors.white),),
                                      color: Color(0xFFFFCF30),
                                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0)),
                                      onPressed: () {},
                                    ),
                            ),
                    ],),
                  ],
              ),
          ),Divider(color: Colors.grey,),
          Container(
              margin: EdgeInsets.all(40),
              child: Column(
              children: <Widget>[
              
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('Set Alarm:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ),
              ],),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only( bottom: 10),
                    child: Icon(Icons.alarm, size: 40,),
                  )
              ],),

              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('Time', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
              ],),

              Row(
                children: <Widget>[
                  Container(
                    // margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('In 1 hours', style: TextStyle(fontSize: 24,color: Colors.grey[300], fontWeight: FontWeight.normal),)
                    ),
              ],),

              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('Date', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
              ],),

              Row(
                children: <Widget>[
                  Container(
                    // margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('Today', style: TextStyle(fontSize: 24,color: Colors.grey[300], fontWeight: FontWeight.normal),)
                    ),
              ],),

              Row(
                children: <Widget>[
                    Container(
                            margin: EdgeInsets.only(top: 15, bottom: 10),
                            child: new RaisedButton(
                                      padding: EdgeInsets.only(left: 50, right: 50),
                                      child: new Text("DONE", style: TextStyle(color: Colors.white),),
                                      color: Color(0xFF33F1A5),
                                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0)),
                                      onPressed: () {},
                                    ),
                            ),
                ],
              )
            ],),
            ),
        ],
      )
      
      // body: Container(
      //         margin: EdgeInsets.only(top: 50),
      //         child: Row(
      //         // crossAxisAlignment: CrossAxisAlignment.baseline,
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: <Widget>[
      //           Column(
      //             mainAxisSize: MainAxisSize.max,
      //             mainAxisAlignment: MainAxisAlignment.start,
      //               children: <Widget>[
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: <Widget>[
      //                         Container(
      //                         // width: 300,
      //                         // height: 20,
      //                         child: Icon(Icons.launch, color: Color(0xFF33F1A5),)
      //                     ),
      //                     Container(
      //                         // width: 300,
      //                         // height: 20,
      //                         child: Icon(Icons.launch, color: Color(0xFF33F1A5),)
      //                     ),
      //                     ],
      //                     ),
                          
      //                     Container(
      //                       margin: EdgeInsets.only(top: 50),
      //                       width: 150,
      //                       child: RaisedButton(
      //                               shape: RoundedRectangleBorder(
      //                                   borderRadius: new BorderRadius.circular(8.0), ),
      //                               padding: const EdgeInsets.all(8.0),
      //                               textColor: Colors.white,
      //                               color: Color(0xFF33F1A5),
      //                               onPressed: () async {
      //                                 await Navigator.pushNamed(context, SecondViewRoute);
                                      
      //                               },
      //                               child: new Text("Next"),
      //                             ),
      //                     )
                          
      //             ],
      //           ),
                
                
      //         ],
      //       ),
      // ),
      
    );
  }


 


}



