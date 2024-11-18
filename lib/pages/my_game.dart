import 'dart:async';
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
// import 'package:flame/input.dart';

class MyGame extends FlameGame with TapDetector {
  late SpriteComponent player;

  @overrideg
  FutureOr<void> onLoad() async {
    player = SpriteComponent(
      sprite: await loadSprite('player.j  peg'),
      size: Vector2(50, 50),
      position: Vector2(100, 400),
    );
    add(player);
  }

  @override
  void onTapDown(TapDownInfo info) {
    player.y -= 50;
    // super.onTapDown(info);
  }

  @override
  void update(double dt) {
    super.update(dt);
    player.y += 1; // Gravity effect
    if (player.y > 400) player.y = 400; // prevent falling off-screen
  }
}
