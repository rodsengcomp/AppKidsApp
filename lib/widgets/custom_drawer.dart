import 'package:flutter/material.dart';
import 'package:appkidsapp/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(202, 0, 51, 202),
                Colors.white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
      ),
    );

    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text("KidsApp\nAprendra\nBrincando!!!",
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início", pageController, 0),
              DrawerTile(Icons.history_edu_outlined, "Histórias", pageController, 1),
              DrawerTile(Icons.design_services, "Desenhos", pageController, 2),
              DrawerTile(Icons.warning_amber_sharp, "Comportamento", pageController, 3),
              DrawerTile(Icons.video_collection_rounded, "Vídeos", pageController, 4),
              DrawerTile(Icons.accessibility, "Quem Somos", pageController, 5),
            ],
          )
        ],
      ),
    );
  }
}
