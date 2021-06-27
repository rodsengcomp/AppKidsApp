import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class MoviesOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Image(
                  image: NetworkImage('https://staticr1.blastingcdn.com/media/photogallery/2020/8/26/660x290/b_502x220/filmes-de-animacao-para-assistir-com-as-criancas-arquivo-blasting-news_2507754.jpg'),
                ),
              ),
              Text('fonte: https://br.blastingnews.com/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'A importância dos filmes infantis as crianças',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'Percebe-se que a criança está tendo cada vez mais autonomia para assistir a filmes infantis em casa, no celular ou computador, sem a presença de um adulto. '
                        'É interessante que esse momento de descontração também possa lhe promover além do prazer e do conhecimento.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Entendemos a presença dos filmes como forma de estimular, nas crianças, a observação, a capacidade de julgamento, '
                        ' sensibilidade, experiência estética, bem como articular espaços de '
                        'discussão e interpretação entre outras crianças na escola e em casa.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('fonte: https://sites.google.com/site/bemvindoaomundoanimado/a-importancia-dos-filmes-infantis-para-as-criancas',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
