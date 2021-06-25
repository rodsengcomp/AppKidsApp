import 'package:flutter/material.dart';
import 'package:appkidsapp/tabs/home_tab.dart';
import 'package:appkidsapp/tabs/sobre_tab.dart';
import 'package:appkidsapp/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Histórias"),
            centerTitle: true,
          ),
          body: Sobre(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Desenhos"),
            centerTitle: true,
          ),
          body: Sobre(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Comportamento"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: Sobre(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Vídeos"),
            centerTitle: true,
          ),
          body: Sobre(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Sobre o Aplicativo"),
            centerTitle: true,
          ),
          body: Sobre(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}