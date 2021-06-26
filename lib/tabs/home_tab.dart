import 'package:appkidsapp/screens/quemkidsapp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:appkidsapp/screens/elixo_screen.dart';
import 'package:appkidsapp/screens/quemsomos_screen.dart';
import 'package:transparent_image/transparent_image.dart';


import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 36, 67, 198),
            Color.fromARGB(255, 152, 208, 251)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        );

    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Aprenda Brincando !!!"),
                centerTitle: true,
              ),
            ),
            SliverFixedExtentList(
                itemExtent: 380.0,
                delegate: SliverChildListDelegate([
                  Container(
                    child: Card(color: Color.fromARGB(255, 19, 50, 182),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'O que é KidsApp?',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                            ),
                            tileColor: Color.fromARGB(255, 10, 37, 90),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.white,
                                color: Color.fromARGB(255, 10, 37, 90),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomos()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(color: Colors.grey,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'O que é lixo eletrônico?',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                            ),
                            tileColor: Colors.grey.shade300,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomosApp()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(color: Colors.blue,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'Eletrônicos Linha Azul',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                            ),
                            tileColor: Colors.blue.shade400,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomosApp()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(color: Colors.brown,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'Eletrônicos Linha Marrom',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                            ),
                            tileColor: Colors.brown.shade400,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomosApp()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(color: Colors.green,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'Eletrônicos Linha Verde',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                            ),
                            tileColor: Colors.green.shade400,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomosApp()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(color: Colors.white,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'Eletrônicos Linha Branca',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),
                            ),
                            tileColor: Colors.grey.shade300,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomosApp()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(color: Colors.red,
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.accessibility),
                            title: const Text(
                              'Eletrônicos Linha Especial',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                            ),
                            tileColor: Colors.red.shade300,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/images/o_que_e_kidsapp.png')
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => QuemSomosApp()),
                                  );
                                },
                                child: const Text('SAIBA MAIS'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
               ]),
              )
            // o SliverList deve estar aqui ...

          ],
        )
      ],
    );
  }
}
