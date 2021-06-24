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
                Color.fromARGB(255, 0,255,127),
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
                      child: Text("Kids\nApp",
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início", pageController, 0),
              DrawerTile(Icons.list, "Ecopontos (Não Eletrônicos)", pageController, 1),
              DrawerTile(Icons.location_on, "Reciclagens de Eletrônicos", pageController, 2),
              DrawerTile(Icons.location_on, "Agendamento de Retirada", pageController, 3),
              DrawerTile(Icons.playlist_add_check, "Retiradas Agendadas", pageController, 4),
              DrawerTile(Icons.accessibility, "Quem Somos", pageController, 5),
            ],
          )
        ],
      ),
    );
  }
}
