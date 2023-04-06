import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'box-game.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.setOrientation(DeviceOrientation.portraitUp);
  await Flame.device.fullScreen();

   BoxGame game = BoxGame();
  runApp(GameWidget(game: game));
  //runApp(const HomePage());

}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BoxGame game = BoxGame();


  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePageOne());
  }
}

class HomePageOne extends StatefulWidget {
  const HomePageOne({Key? key}) : super(key: key);

  @override
  _HomePageOneState createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  @override
  Widget build(BuildContext context) {
    return GameWidget(game: BoxGame());
  }
}


