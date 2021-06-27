import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:appkidsapp/screens/quemkidsapp_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:launch_review/launch_review.dart';
import 'package:url_launcher/url_launcher.dart';

class DicasForYouTabs extends StatefulWidget {
  final Widget child;

  DicasForYouTabs({Key key, this.child}) : super(key: key);

  _DicasForYouTabsState createState() => _DicasForYouTabsState();
}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class _DicasForYouTabsState extends State<DicasForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEFF0F1),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: ListDicas(),
      ),
    );
  }

  Widget ListDicas() {
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
                        'https://lh3.googleusercontent.com/a75qInCyRaHJ5NZ1sOvjQRMIJPM9zDOfDpNljrdGDLABgnrw2PiqMC7kofTY0bsWLFTqo6k=s152'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Desfralde sem traumas',
              ),
              subtitle: Text('Dra Luciana Herrero'),
              onTap: () => launch('https://www.youtube.com/watch?v=0P53Opyypec')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://i.ytimg.com/vi/4zjVjJv_9M8/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDvMcjiuerQN-uTCY3Cdi-aIhfsKQ'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Como os bebês aprendem - parte 1',
              ),
              subtitle: Text('Estúdio do Movimento Sumaia Tais'),
              onTap: () => launch('https://www.youtube.com/watch?v=4zjVjJv_9M8')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://i.ytimg.com/vi/4zjVjJv_9M8/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDvMcjiuerQN-uTCY3Cdi-aIhfsKQ'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Como os bebês aprendem - parte 2',
              ),
              subtitle: Text('Estúdio do Movimento Sumaia Tais'),
              onTap: () => launch('https://www.youtube.com/watch?v=2gImCgkHSAg')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://i.ytimg.com/vi/4zjVjJv_9M8/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDvMcjiuerQN-uTCY3Cdi-aIhfsKQ'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'Como os bebês aprendem - parte 3',
              ),
              subtitle: Text('Estúdio do Movimento Sumaia Tais'),
              onTap: () => launch('https://www.youtube.com/watch?v=ixdlEZlHjP8')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://i.ytimg.com/vi/evkvmkyVrYo/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDep5-1GS_olGGLF3j04lKkMvijTg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'A importância do BRINCAR no desenvolvimento infantil | #Comunica',
              ),
              subtitle: Text('Cá me disse'),
              onTap: () => launch('https://www.youtube.com/watch?v=evkvmkyVrYo')
          ),
          SizedBox(height: 40.0),
          ListTile(
              leading: Container(
                height: 100.0,
                width: 100.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        'https://i.ytimg.com/an_webp/NmRF3DoVd_U/mqdefault_6s.webp?du=3000&sqp=CIPe3oYG&rs=AOn4CLDvY2Af0i64OX5w0fUvwJxYg6rxeg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              title: Text(
                'DICAS PARA CONTAR HISTÓRIAS PARA CRIANÇAS',
              ),
              subtitle: Text('Meu Bebê'),
              onTap: () => launch('https://www.youtube.com/watch?v=NmRF3DoVd_U')
          ),
          SizedBox(height: 40.0),

        ],
      ),
    );
  }

}