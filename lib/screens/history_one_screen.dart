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
              Text('fonte: https://barcelonasuperficies.com.br/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'A importância de contar histórias a crianças',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'É importante para o bebê ouvir a voz amada e para a criança pequenina escutar uma narrativa curta, '
                    'simples, repetitiva, cheia de humor e de calidez (numa relação a dois),com crianças de 0 a 5 anos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'A contação de histórias na educação infantil desperta a curiosidade, estimula a imaginação, desenvolve a'
                    ' autonomia e o pensamento, proporciona vivenciar diversas emoções como medo e angústias, ajudando a '
                    'criança a resolver seus conflitos emocionais próprios, aliviando sobrecargas emocionais.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('fonte: http://docs.uninove.br/arte/fac/publicacoes/pdf/v6-2016/ARTIGO-ANA-LUCIA-SANCHES.pdf/',
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
