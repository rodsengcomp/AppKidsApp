import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class BookOne extends StatelessWidget {
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
                  image: NetworkImage('https://turinha-static.pkds.it/blog/production/2019/04/11110419/leitura-para-beb%C3%AAs.jpg'),
                ),
              ),
              Text('fonte: https://leiturinha.com.br/blog/a-leitura-para-pequenos-de-0-a-3-anos-os-bebes-e-os-livros-infantis/',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'A leitura para pequenos de 0 a 3 anos: os bebês e os livros infantis',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  subtitle: Text(
                    'A primeira infância: a literatura como ato de brincar',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text(
                    'O período dos 0 aos 6 anos é considerado como a primeira infância. Este é um período importantíssimo '
                    'no desenvolvimento humano. Entre outros fatores, nessa época da vida acontecem processos fundamentais, '
                    'como o crescimento físico, o amadurecimento do cérebro, o desenvolvimento da fala e da capacidade de '
                    'aprendizado e a iniciação social e afetiva. Um dos avanços da neurociência foi, justamente, descobrir '
                    'as potencialidades da primeira infância, reconhecendo sua importância para a sociedade como um todo. '
                    'Uma vez que o desenvolvimento humano é resultado da combinação da genética com a qualidade das relações '
                    'que desenvolvemos e do ambiente no qual estamos inseridos, podemos dizer que quando as condições para o '
                    'desenvolvimento durante a primeira infância são boas, maiores são as probabilidades de os pequenos '
                    'alcançarem seu melhor potencial, tornando-se adultos mais equilibrados, realizados e felizes.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: const Text('fonte: por Sarah Helena | abr 2, 2019',
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
