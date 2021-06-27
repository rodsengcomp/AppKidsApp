import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicForYouTabs extends StatefulWidget {
  final Widget child;

  MusicForYouTabs({Key key, this.child}) : super(key: key);

  _MusicForYouTabsState createState() => _MusicForYouTabsState();
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class _MusicForYouTabsState extends State<MusicForYouTabs> {
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
                      'https://i.ytimg.com/vi/0Re8-aKoWQE/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCBPpL89lYlXKdXeEDji3nBcCYisQ'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Canções Educativas exclusivas do Animazoo',
            ),
            subtitle: Text('Animazoo_Brasil'),
                onTap: () => launch('https://www.youtube.com/watch?v=0Re8-aKoWQE')
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://i.ytimg.com/vi/RTFzXyFfyp8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDARgd86Lm4HjjOv67qxSbky2PdSw'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Aqui Bebês Cantam | DE MANHÃ CEDINHO E MAIS MÚSICAS INFANTIS',
            ),
            subtitle: Text('Aqui Bebês Cantam - Músicas para Crianças'),
              onTap: () => launch('https://www.youtube.com/watch?v=RTFzXyFfyp8')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://lh3.googleusercontent.com/qLdKLEfo46rQy1BOz9Dv-LU8sCbV33tSkUisAE4LOYIFO3noLGk3s1b_1qv5D1SRM9tA=s151'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'A E I O U - Crianças Inteligentes',
              ),
              subtitle: Text('CRIANÇAS INTELIGENTES'),
              onTap: () => launch('https://www.youtube.com/watch?v=UBDZyAuFjDY')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://lh3.googleusercontent.com/9hBsWEMxhxbQX-1AkLtwNmLBzQuogrDWN01PvUFufaPO82BclSPavz48op1tn2EL5gDBd1E=s151'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Brotinhos Completo vol. 1 | Músicas Infantis',
              ),
              subtitle: Text('Brotinhos'),
              onTap: () => launch('https://www.youtube.com/watch?v=Zx8alrZNUK8')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://lh3.googleusercontent.com/evZJEQkAIBx9zKdOGvv49Jvgfk42gU0yJpAACOYLsaNp6WvFD_fyDXS4DdqAlhCw_l7i=s151'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                '30 Minutos de Música - Canções educativas - Animazoo',
              ),
              subtitle: Text('Animazzo'),
              onTap: () => launch('https://www.youtube.com/watch?v=kg48ZetqxdI')
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
