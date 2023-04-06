import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class BoxGame extends Game {
  Vector2 screenSize = Vector2(765,360);
  late Backyard background;

  BoxGame(){
    initialize();
  }

  initialize(){
    // FlameAudio.bgm.initialize();
    // if(!FlameAudio.bgm.isPlaying){
    //   FlameAudio.bgm.play('bgm.mp3');
    // }

    background = Backyard(this,'cg/bg.jpg');
  }

  @override
  void render(Canvas canvas) {
    background.render(canvas);
    // TODO: implement render
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

  @override
  void onGameResize(Vector2 size) {
    // TODO: implement onGameResize
    super.onGameResize(size);
    screenSize = canvasSize;
    print('onGameResize');
    print(screenSize.x);
    print(screenSize.y);
  }
}

class Backyard{
  late final game;
  late final String bgSrc;
  Sprite? bgSprite;
  Rect? rect;

  Backyard(this.game,this.bgSrc){
    init();
  }

  init () async {
    bgSprite = await Sprite.load(bgSrc);
    rect = Rect.fromLTWH(0, 0, game.screenSize.x, game.screenSize.y);
  }

  void render(Canvas c){
    if(bgSprite!=null && rect!=null){
      bgSprite!.renderRect(c, rect!);
    }
  }

}