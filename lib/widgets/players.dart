import 'dart:convert';

import 'package:flutter/services.dart';


class Players {
  int id;
  String name;

  Players({
    this.id,
    this.name
  });

 factory Players.fromJson(Map<String, dynamic> parsedJson) {
    return Players(
        id: parsedJson['id'],
        name: parsedJson['name'] as String
    );
  }
}



class PlayersViewModel {
  static List<Players> players;

  static Future loadPlayers() async {
    try {
      players = new List<Players>();
      String jsonString = await rootBundle.loadString('assets/players.json');
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['players'] as List;
      for (int i = 0; i < categoryJson.length; i++) {
        players.add(new Players.fromJson(categoryJson[i]));
      }
    } catch (e) {
      print(e);
    }
  }

}