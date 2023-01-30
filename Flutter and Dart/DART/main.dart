class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello(){
    print("Hello this is $name");
  }
}

void main() {
  var apiData = [
    {
      "name": "PlayerA",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "PlayerB",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "PlayerC",
      "team": "red",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
      var player = Player.fromJson(playerJson);
      player.sayHello();
   });
}
