import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MovieReleaseTabs extends StatefulWidget {
  final Widget child;

  MovieReleaseTabs({Key key, this.child}) : super(key: key);

  _MovieReleaseTabsState createState() => _MovieReleaseTabsState();
}

class _MovieReleaseTabsState extends State<MovieReleaseTabs> {

  final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4qzuR3BJNZNH7-V57aBEWKxrWXZCg0JntmQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIZEHxfcops1EfX88tYJ4DikOd4DL1c_gTJg&usqp=CAU',
  'https://2.bp.blogspot.com/-Erud_82AakI/VnyP6OocvbI/AAAAAAAAPiU/qQJN7zU-0bs/s1600/dm.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1mpz3t-jc2poqIyIe-pI0Mxs4I7M-PMDjVw&usqp=CAU',
  'https://lh3.googleusercontent.com/6-sLKx-Er_7Ys55FeVh2UgfWz3xYYjQRgdqBr3MGIc4XoKAi1QidOJvYGmt7Dk9rPnyaNSM=s150',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPQVbvogo4PGzY6jCYVrtce_mB7ElGYcw6A&usqp=CAU'
];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          CarouselContainer(),
          SizedBox(
            height: 20.0,
          ),
          InstalledApps(),
          SizedBox(
            height: 20.0,
          ),
          RecommendedApps(),
        ],
      ),
    );
  }

 Widget CarouselContainer(){
    return CarouselSlider(
      viewportFraction: 1.0,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
            ),
          );
        },
      ).toList(),
    );
 }


Widget RecommendedApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Filmes Recomendados'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsContainer(),
          ),
        ],
      ),
    );
  }

  Widget InstalledApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Filmes Populares'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsRecommendedContainer(),
          ),
        ],
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
        ],)
      ],
    );
  }

    Widget appsRecommendedContainer() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://blogdorogerinho.files.wordpress.com/2015/06/divertida-mente-poster-personagens-camundongo.jpg',
                'Divertidamente','\u0024 19.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/7CctkOjLePIE9RtXZWnOVPzkTod-ZsxcMm07yANXRSlY3K9jSOS_z5_M0xktgYsRd5zMqQ=s85',
                'Lilo Stitch','\u0024 19.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/6-sLKx-Er_7Ys55FeVh2UgfWz3xYYjQRgdqBr3MGIc4XoKAi1QidOJvYGmt7Dk9rPnyaNSM=s150',
                'Moana','\u0024 12.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/gJhD0pbdigjz8camGFfQhjaKP4rqQ0tinXURobmdGpQxJaUnPs1jaaWUkSDdFLsXZgIZ=w200-h300-rw',
                'Ralph','\u0024 14.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPQVbvogo4PGzY6jCYVrtce_mB7ElGYcw6A&usqp=CAU',
                'Monstros S.A','\u0024 19.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoW5pIEK8rUZ59dJ5-SXHx9nw4QlurV0LUMg&usqp=CAU',
                'Meu Malvado Favorito','\u0024 14.99'),
          ],
        ));
  }

  Widget appsContainer() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://lh3.googleusercontent.com/wW0oR0vmZ8wL_KiCp6pVyVQljNQ2FbY3m5Ggd_mgq2q12xbEx6az8BguR_fufdHlPHUxlg=s102',
                'Dora Aventureira','\u0024 13.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/W-yM92oa9Qrhh57unazpHdSXeg8tzr1LliBGun4qva9bLcR50ZG4cUx0ycoOGAA4eh5mfQ=s152',
                'Galinha Pintadinha','\u0024 9.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/3zNmdqCyzRB-9SCtXA7-few8CnZDoIAEfcwC1ZnKzUAvTWy5V1c0vS4NeyBKgNI3WtC1=s128',
                'Vida de Inseto','\u0024 9.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVkHjeP4sx7U2kV4UrTUK2v-TQ0jKlcEUkNg&usqp=CAU',
                'Procurando o Nemo','\u0024 13.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/uvZS-uQjlqen4SOVcGLucNicfM2rR7qQcx4XQTAZLS3psdfQlwK-LmruMG9xLHb2pyTu=s85',
                'Pequena Sereia','\u0024 14.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/BQuUwbucEFk9WSQwtVJ71Y9HuqPkluP455VEFOfA8cT8bFnISyYlVD3kh1FY9xBgoMKg14Y=s85',
                'Moisés','\u0024 14.99'),
          ],
        ));
  }
}
