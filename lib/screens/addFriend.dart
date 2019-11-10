import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttercomponents/routing_const.dart';
import 'package:fluttercomponents/widgets/contacts.dart';
import 'package:fluttercomponents/widgets/friends.dart';
import 'package:fluttercomponents/widgets/players.dart';
import '../pre/crockyIcons.dart' as customIcon;




class AddFriendView extends StatelessWidget {
  const AddFriendView({Key key}) : super(key:key);

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
            title: Text('Add Friends', style: TextStyle(color: Colors.black),),
            elevation: 0.0,
      ),
      body: AddFriend(),
    );
   
  }
  
}












// Define a custom Form widget.
class AddFriend extends StatefulWidget {
     @override
    AddFriendState createState() => AddFriendState();
}


class AddFriendState extends State<AddFriend> {
  // TaskCreateFormState();
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  
  // AutoCompleteTextField searchTextField;
 
 TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: Text("Enter your Friend's gmail address", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
                ],),
                Row(children: <Widget>[
                  Expanded(
                    // width: 300,
                    // margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: searchFriend(),
                    ),
                ],),
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    child: Text("Or", style: TextStyle(fontSize: 20, color: Colors.grey[500]),)
                    ),
                ],),
                Row(
                      children: <Widget>[
                        Expanded(
                          // margin: EdgeInsets.only(top: 15, bottom: 10),
                          child: new OutlineButton(
                                    padding: EdgeInsets.all(10),
                                    child: new Text("Select From Contact           >", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    onPressed: () {},
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
                                  ),
                          ),
                    ],),
                Row(
                  children: <Widget>[
                    Container(
                          margin: EdgeInsets.only(top: 30, bottom: 10, right: 16),
                          child: new RaisedButton(
                                    padding: EdgeInsets.only(left: 50, right: 50),
                                    child: new Text("Next", style: TextStyle(color: Colors.white),),
                                    color: Colors.grey,
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0)),
                                    onPressed: () {},
                                  ),
                          ),
                  ],
                )

              ],
            ),
          )
        ],
      ),
      
    );
  }




    void _loadData() async {
      await PlayersViewModel.loadPlayers();
    }

    @override
    void initState() {
      _loadData();
      super.initState();
    }

  GlobalKey<AutoCompleteTextFieldState<Players>> key = new GlobalKey();

  Widget searchFriend() {
   
   return AutoCompleteTextField<Players>(
        // style: new TextStyle(color: Colors.black, fontSize: 16.0),
        decoration: new InputDecoration(
         
            hintText: 'type gmail',
            hintStyle: TextStyle(color: Colors.grey[300], fontSize: 24)),
            
            key: key,
            suggestions: PlayersViewModel.players, //parsed json data

            itemFilter: (item, query) {
                    return item.name
                        .toLowerCase()
                        .startsWith(query.toLowerCase());
                  },
            itemSorter: (a, b) {
                    return a.name.compareTo(b.name);
                  },
            itemBuilder: (context, item) {
                        return _buildSuggesion(context, item);
                      },

            );
   
  }


  Widget _buildSuggesion(context, item) {
        return Container(
                          padding: EdgeInsets.only(top:15, bottom: 15),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1))
                          ),
                          child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  
                                      Container(
                                        // flex: 1,
                                        child: ClipRRect(
                                            borderRadius: new BorderRadius.all(Radius.circular(12)),
                                            child: Image.asset('assets/inzmam.png', fit: BoxFit.cover, height: 40, width: 40,),
                                        ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(item.name,
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),),
                                          Text('iaminzmam@gmail.com',
                                            style: TextStyle(
                                              fontSize: 10.0, color: Colors.grey
                                            ),),
                                        ],
                                      ),
                                  ),
                                Container(
                                   width: 70,
                                  height: 30,
                                  child:  _selectButton(),
                                )
                                  
                                ],
                              ),
                        );
  }



  Widget _selectButton() {
      return RaisedButton(
        
                      shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(8.0), ),
                      textColor: Colors.white,
                      color: Color(0xFF33F1A5),
                      onPressed: () async {
                      },
                      child: new Text("Select", style: TextStyle(fontSize: 10,),),
                );
    }


}



