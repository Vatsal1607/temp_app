import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:tap_game/pages/my_game.dart';

void main() {
  runApp(
    GameWidget(
      game: MyGame(),
    ),
  );
}
