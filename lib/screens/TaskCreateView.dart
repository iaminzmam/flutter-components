import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:fluttercomponents/screens/TaskAddDetails.dart';
import 'package:fluttercomponents/widgets/contacts.dart';
import 'package:fluttercomponents/widgets/friends.dart';
import '../pre/crockyIcons.dart' as customIcon;
import 'package:fluttercomponents/routing_const.dart';



class TaskCreateView extends StatelessWidget {
  const TaskCreateView({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return TaskCreateForm();
    // MaterialApp(
    //     title: 'Task Create',
    //     theme: ThemeData(
    //       primaryColor: Colors.white,
    //       ),
    //     home: Scaffold(
    //       appBar: new AppBar(
    //         titleSpacing: 0.0,
    //         leading: IconButton(icon: Icon(customIcon.MyFlutterApp.back, size: 15, color: Colors.black,),
    //             onPressed: () async {
    //               await Navigator.pop(context);
    //             },),
    //         title: Text('Create New'),
    //         elevation: 0.0,
    //       ),
    //       body: TaskCreateForm(),
          
    //     ),
    //     // initialRoute: 'fillDetails',
    //     // routes: <String, WidgetBuilder>{
    //     //   "fillDetails": (BuildContext context) => TaskCreateForm(),
    //     // },
    //   );
   
  }
  
}












// Define a custom Form widget.
class TaskCreateForm extends StatefulWidget {
     @override
    TaskCreateFormState createState() => TaskCreateFormState();
}


class TaskCreateFormState extends State<TaskCreateForm> {
  // TaskCreateFormState();
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

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
      body: Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                          Container(
                              width: 300,
                              height: 20,
                              child: Text('Title', style: TextStyle(fontSize: 20),),
                          ),
                          Container(
                              width: 300,
                              height: 100,
                              child: title(),
                          ),
                          Container(
                              width: 300,
                              height: 20,
                              child: Text('Content', style: TextStyle(fontSize: 20),),
                          ),

                          Container(
                              width: 300,
                              height: 100,
                              child: content(),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            width: 150,
                            child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(8.0), ),
                                    padding: const EdgeInsets.all(8.0),
                                    textColor: Colors.white,
                                    color: Color(0xFF33F1A5),
                                    onPressed: () async {
                                      await Navigator.pushNamed(context, TaskCreateDetailViewRoute);
                                      
                                    },
                                    child: new Text("Next"),
                                  ),
                          )
                          
                  ],
                ),
                
                
              ],
            ),
      ),
      
    );
  }


  Widget title() {
    return TextField(
        controller: myController,
        decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.grey[300]),
            border: InputBorder.none,
            hintText: 'Add Title'
          ),
      );
  }


  Widget content() {
    return TextFormField(
        controller: myController,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.grey[300]),
            // border: InputBorder.none,
            // contentPadding: EdgeInsets.only(bottom: 50),
            labelText: 'Add Description'
          ),
      );
  }


}



