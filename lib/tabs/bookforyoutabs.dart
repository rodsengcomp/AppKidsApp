import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class BookForYouTabs extends StatefulWidget {
  final Widget child;

  BookForYouTabs({Key key, this.child}) : super(key: key);

  _BookForYouTabsState createState() => _BookForYouTabsState();
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class _BookForYouTabsState extends State<BookForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEFF0F1),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: ListBooks(),
      ),
    );
  }

  Widget ListBooks() {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
            ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://www.baixelivros.com.br/media/2021/04/historias-infantis.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              '100 Histórias Infantis – Vários Autores',
            ),
            subtitle: Text('Baixe Livros'),
                onTap: () => launch('https://www.baixelivros.com.br/infantil/100-historias-infantis')
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://www.baixelivros.com.br/media/2020/10/juju.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Juju Vai Viajar… o Ciclo da Água',
            ),
            subtitle: Text('Ana Cláudia Dias'),
              onTap: () => launch('https://www.baixelivros.com.br/infantil/juju-vai-viajar-o-ciclo-da-agua')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://www.baixelivros.com.br/media/2021/06/arco-iris.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'O Arco-íris',
              ),
              subtitle: Text('Bruna Lima'),
              onTap: () => launch('https://www.baixelivros.com.br/infantil/o-arco-iris')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://www.baixelivros.com.br/media/2021/05/ferias-aulas.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Férias e Volta as Aulas',
              ),
              subtitle: Text('Atividades Pré-Escola'),
              onTap: () => launch('baixelivros.com.br/didatico/ferias-e-volta-as-aulas')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://www.baixelivros.com.br/media/2021/06/bandeirinhas.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Bandeirinhas',
              ),
              subtitle: Text('Jane Prado'),
              onTap: () => launch('https://www.baixelivros.com.br/infantil/bandeirinhas')
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
