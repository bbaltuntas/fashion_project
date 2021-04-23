import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:moda_projesi/detay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool isLiked = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        //unselectedItemColor: Colors.green,
        //fixedColor: Colors.green,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.brown.shade300,
              label: "home",
              icon: Icon(
                Icons.home_filled,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.brown.shade400,
              label: "play",
              icon: Icon(
                Icons.play_circle_outline,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.brown.shade500,
              label: "explore",
              icon: Icon(
                Icons.assistant_navigation,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.brown.shade600,
              label: "search",
              icon: Icon(
                Icons.bubble_chart_outlined,
              )),
        ],
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              )),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            height: 160,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                listeElemani("assets/model3.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model2.jpeg", "assets/chanellogo.jpg"),
                listeElemani("assets/model3.jpeg", "assets/chanellogo.jpg"),
              ],
            ),
          ),

          // Card View
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(18.0),
              elevation: 4,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.brown.shade200,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/model1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "34 mins ago",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                        "Phasellus dignissim dictum quam vel fringilla. Pellentesque pellentesque ex a sollicitudin fringilla. ",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imagePath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 210,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/modelgrid1.jpeg"),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detay(
                                              imagePath:
                                                  "assets/modelgrid2.jpeg",
                                            )));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 100,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detay(
                                              imagePath:
                                                  "assets/modelgrid3.jpeg",
                                            )));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 100,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.brown.withOpacity(0.4),
                            ),
                            child: Center(
                              child: Text(
                                "# Louis Vuitton ",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 12),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 120,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                "# Chloe ",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.brown.shade900),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.brown.shade300.withOpacity(0.5),
                      indent: 4,
                      thickness: 0.4,
                    ),

                    // bottom of the card
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.reply,
                                      color: Colors.grey.withOpacity(0.4),
                                    )),
                              ),
                              Text(
                                "1.7k",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.comment,
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                "397",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: isLiked == false
                                      ? Colors.grey
                                      : Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (isLiked) {
                                      isLiked = false;
                                    } else {
                                      isLiked = true;
                                    }
                                  });
                                },
                              ),
                              Text(
                                "2.7k",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String pathBigLogo, String pathSmallLogo) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(pathBigLogo),
                    )),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(pathSmallLogo),
                      )),
                ),
              ),
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(
                      fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                )),
          )),
        ],
      ),
    );
  }
}
