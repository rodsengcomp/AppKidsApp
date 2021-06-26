import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class HistoryOne extends StatelessWidget {
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
                  image: NetworkImage('https://barcelonasuperficies.com.br/wp-content/uploads/2018/02/contacao-de-historias-uma-poderosa-ferramenta-para-a-formacao-infantil.jpg'),
                ),
              ),
              Text('fonte: https://encrypted-tbn0.gstatic.com/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Aplicativo KidsApp para auxiliar o aprendizado na primeira infância',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'Aplicativo desenvolvido para auxiliar os educadores, pais, responsáveis, crianças e demais no '
                        'aprendizado das crianças de 0 a 5 anos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Olá sejam todos bem vindos, o aplicativo KidsApp é uma ferramenta inovadora que busca '
                    'com que o estudante, através de educadores, pais e responsáveis como usuários, possam auxiliar'
                    ' crianças de 0 a 5 anos no aprendizado, conhecendo a si mesmo e o mundo e tendo experiências '
                    'sensoriais, através de ritmos e linguagens.Tudo isso com muita diversão e alegria com vídeos, '
                    'histórias, filmes, livros, musicas, entre outros diversos conteúdos para crianças de 0 a 5 anos',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Enfim explore use e abuse do aplicativo KidsApp, esperamos que todos gostem.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Image.network('https://hermes.digitalinnovation.one/articles/cover/617d0b9e-4514-43e5-8b2f-4c9a6395c4e5.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:  InkWell(
                  child: Text("Clique aqui para acessar o projeto no GITHUB",
                    style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  onTap: () async {
                    if (await canLaunch("https://github.com/rodsengcomp/AppKidsApp")) {
                      await launch("https://github.com/rodsengcomp/AppKidsApp");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'Emails de Suporte: \n\n'
                    'Rodolfo: 1700493@aluno.univesp.br\n'
                    'Bruna: 1701715@aluno.univesp.br\n'
                    'Laís: 1705307@aluno.univesp.br\n'
                    'Patrícia: 1703723@aluno.univesp.br\n'
                    'Marcelo: 1704322@aluno.univesp.br\n'
                    'Regiane: 1715579@aluno.univesp.br\n',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
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
