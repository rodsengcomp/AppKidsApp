import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:appkidsapp/homepage.dart';

class Start extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidsApp',
      theme: ThemeData(
        primaryColor: Color(0xffffffff),
      ),
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

//https://github.com/lohanidamodar/flutter_intro_screen
class _IntroScreenState extends State<IntroScreen> {
  SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  final List<String> titles = [
    "KidsApp - Aprenda Brincando !!!",
    "Brincadeiras Divertidas",
    "Historinhas Pedagógicas",
    "Atividades Educativas",
  ];
  final List<String> subtitles = [
    "Vídeos com historinhas animadas que ajudam a lidar com as emoções dos pequenos.",
    "Brincadeiras que você pode fazer em casa educando seu filho e se divertindo !!!",
    "Histórias que trabalham as emoções dos pequenos, ainda confusas e dolorosas ",
    "Estimulando a coordenação motora, percepção espacial e o raciocínio lógico"
  ];
  final List<Color> colors = [
    Color.fromARGB(255, 17, 56, 224),
    Color.fromARGB(255, 248, 191, 21),
    Color.fromARGB(255, 17, 212, 36),
    Color.fromARGB(255, 234, 49, 103),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.black38,
                activeSize: 20.0,
              ),
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                bg: colors[index],
                imageUrl: "assets/images/intoscreen_${index + 1}.png",
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton(
              child: Text("Pular",
                  style: (TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon:
              Icon(_currentIndex == 3 ? Icons.check : Icons.arrow_forward),
              onPressed: () {
                if (_currentIndex != 3) {
                  _controller.next();
                } else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class IntroItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color bg;
  final String imageUrl;

  const IntroItem(
      {Key key, @required this.title, this.subtitle, this.bg, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg ?? Theme.of(context).primaryColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 20.0),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white, fontSize: 28.0),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 40.0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Material(
                      elevation: 4.0,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
