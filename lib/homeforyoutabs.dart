import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:appkidsapp/screens/quemkidsapp_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:launch_review/launch_review.dart';

class HomeForYouTabs extends StatefulWidget {
  final Widget child;

  HomeForYouTabs({Key key, this.child}) : super(key: key);

  _HomeForYouTabsState createState() => _HomeForYouTabsState();
}

class _HomeForYouTabsState extends State<HomeForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          CardGreenQuemApp(),
          SizedBox(
            height: 20.0,
          ),
          GratisApps(),
          SizedBox(
            height: 20.0,
          ),
          PagosApps(),
        ],
      ),
    );
  }



  Widget ImageContainer() {
    return Container(
      height: 200.0,
      child: Image.asset(
          'assets/images/o_que_e_kidsapp.png',
          fit: BoxFit.cover),
    );
  }

  Widget GratisApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Apps Infantis Gratuitos Recomendados'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsRecGratisContainer(),
          ),
        ],
      ),
    );
  }

  Widget PagosApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Apps Infantis Pagos Recomendados'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsRecPagosContainer(),
          ),
        ],
      ),
    );
  }

  Widget CardGreenQuemApp() {
    return Card(
        color: Color(0xff297d1a),
        //  color: Color.fromARGB(50, 255, 100, 200),
        child: Container(
          child: Card(color: Color(0xff30ba18),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.accessibility),
                  title: const Text(
                    'O que é KidsApp?',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                  ),
                  tileColor: Color.fromARGB(255, 19, 106, 15),
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
                      color: Color.fromARGB(255, 19, 106, 15),
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
    );
  }

  Widget labelContainer(String labelVal) {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
        ],
      ),
    );
  }

  Widget imageSection(String imageVal, String appVal,String rateVal) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          appVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(children: <Widget>[
          Text(
          rateVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        Icon(FontAwesomeIcons.solidStar,size: 10.0,),
        ],)
      ],
    );
  }

    Widget appsRecGratisContainer() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                LaunchReview.launch(androidAppId: "appkidsapp.u000webhostapp.appkidsapp");
             },
            child: imageSection(
                'https://play-lh.googleusercontent.com/S4wylkvt2jz16hnG9IG0pAZosbB82nWWy8P-rQkb54uH-SCVd5L2j7z7x1Vz5pZvIRc=s180-rw',
                'YouTube Kids', '4.3'),
            ),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/On66qaaD615kZeIb37D1XAVzeAdr68mjYxNnkfM0sszdY-zHTN0yjmQZZzKUCujAJQ=s180-rw',
                'Antiestresse','4.4'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/5yp98wUJV10rWUdzBnUHC9XK4fF1N2WJqEdfjzVGIzMnvtF26w39qGaZYXVwSrtvLQ=s180-rw',
                'Bini - Jogo de Desenhar','4.4'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/IAtYbr9EN4WAN2PAftzQxcGsadl-t57JvEGdzCVHACxbC2gszStCcdep2SzxUR8P2Q=s180-rw',
                'Kids','4.2'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/d8r0nDo1lXUgoSVa3VZ0llKmGo7uAgdMqVbrgQsTn-yScSjNZcdxLkMmvQmUQzTnaXs=s180-rw',
                'Colorir Princesa','4.1'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/FafD4vlzxogAHYu3KaNuQ0mlKY0FIm11SqAXrqOIPPWsPMhTZUJ6LwuBJktMU_JT0_w=s180-rw',
                'Piano Músicas','4.4'),
          ],
        ));
  }

  Widget appsRecPagosContainer() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://play-lh.googleusercontent.com/N-OBq8i4wYrR7-pLeSrsSB6yxHpD7Jx1mqk0HkO6YWIsqhIjisr9ofO6Zu98PPNd8k8=s180-rw',
                'Ler e Escrever', '5.0'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/RQB9fW6agU60f8_yOresWARYawyFH5eRMf8QqAiefICdoLdejV28f5ATlIK1ecRUrw=s180-rw',
                'Baby Piano','4.1'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/1wXrZsWz6Z6S8hfCRkkKFjeViQxfNMkdCqPI8mr2kzj5-YXsUPO7Og-fDGrAy3xRqQ=s180-rw',
                'A CORUJA BOO - Jogos','4.6'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/r2sld4Qa9wdWKbI20NjN3wXZyeMIpIEYiSm6r1JpHo2Mxf1uvuunsX6D4uvM_IAU5A=s180-rw',
                'Livro de colorir','4.0'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/2Q0qWZFJZR2-ym6mur_uDrH_nbQ8Ju0GtnZzbGwCIBeYX_z2NoKK0ob9-onu0nobnQ=s180-rw',
                'Aprender Jogo','4.0'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://play-lh.googleusercontent.com/02wVy8uW-6Y2yLY7y3FhV8BZRaf_F5GFoEIyegSvY2Vl3znOxfi9RsbKmfm2HPgfRUg=s180-rw',
                'Alfabeto números','4.8'),
          ],
        ));
  }
}