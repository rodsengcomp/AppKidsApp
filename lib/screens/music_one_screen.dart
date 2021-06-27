import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class MusicOne extends StatelessWidget {
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
                  image: NetworkImage('https://static.portaleducacao.com.br/arquivos/imagens_artigos/29072014113537crian%C3%A7as_cantando_mod.jpg'),
                ),
              ),
              Text('fonte: https://static.portaleducacao.com.br/arquivos/imagens_artigos/29072014113537crian%C3%A7as_cantando_mod.jpg',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'A importância da música na educação infantil',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'A primeira infância: a música como ato de brincar',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'A música possui um papel importante na educação das crianças. Ela contribui para o desenvolvimento '
                    'psicomotor, sócioafetivo, cognitivo e linguístico, além de ser facilitadora do processo de aprendizagem.'
                    'A musicalização é um processo de construção do conhecimento, favorecendo o desenvolvimento da sensibilidade'
                    ', criatividade, senso rítmico, do prazer de ouvir música, da imaginação, memória, concentração, atenção, do '
                    'respeito ao próximo, da socialização e afetividade, também contribuindo para uma efetiva consciência corporal '
                    'e de movimentação. A musicalização na educação infantil está relacionada a uma motivação diferente do ensinar, '
                    'em que é possível favorecer a autoestima, a socialização e o desenvolvimento do gosto e do senso musical das '
                    'crianças dessa fase. Cantando ou dançando, a música de boa qualidade proporciona diversos benefícios para as '
                    'crianças e é uma grande aliada no desenvolvimento saudável da criançada.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('fonte: Por LUIZ CARLOS LEONARDO MENDONÇA, BIÓLOGO, BIO-MÉDICO, LEGISTA, PROFESSOR , TÉCNICO DE LABORATÓRIO E MUSICO.',
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
