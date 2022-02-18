// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moda_app/detay.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: tabBar(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda App Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            height: 140,
            width: double.infinity,
            child: rightwayListView(),
          ),

          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              child: Container(
                height: 470,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    ilkSatirContainer(context),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends",
                      style: TextStyle(fontFamily: "Montserrat"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                          imgPath: "assets/modelgrid2.jpeg",
                                        )));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                          imgPath: "assets/modelgrid3.jpeg",
                                        )));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid3.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "# Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat", fontSize: 10),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                            child: Text(
                              "# Chloe",
                              style: TextStyle(fontFamily: "Montserrat"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.reply),
                        Text("3.4k"),
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                        Text("679"),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text("3.7k")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row ilkSatirContainer(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage("assets/model1.jpeg"), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daisy",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "15 minutes ago",
                style: TextStyle(
                    fontFamily: "Montserrat", fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.grey,
        )
      ],
    );
  }

  ListView rightwayListView() {
    return ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      children: [
        listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
        SizedBox(
          width: 20,
        ),
        listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
        SizedBox(
          width: 20,
        ),
        listeElemani("assets/model3.jpeg", "assets/chanellogo.jpg"),
        SizedBox(
          width: 20,
        ),
        listeElemani("assets/model1.jpeg", "assets/louisvuitton.jpg"),
        SizedBox(
          width: 20,
        ),
        listeElemani("assets/model2.jpeg", "assets/chanellogo.jpg"),
        SizedBox(
          width: 20,
        ),
        listeElemani("assets/model3.jpeg", "assets/louisvuitton.jpg")
      ],
    );
  }

  TabBar tabBar() {
    return TabBar(
      indicatorColor: Colors.transparent,
      controller: tabController,
      tabs: [
        Tab(
          icon: Icon(
            Icons.more,
            color: Colors.grey,
            size: 20,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.play_arrow,
            color: Colors.grey,
            size: 20,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.navigation,
            color: Colors.grey,
            size: 20,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.supervised_user_circle,
            color: Colors.grey,
            size: 20,
          ),
        ),
      ],
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", color: CupertinoColors.white),
            ),
          ),
        ),
      ],
    );
  }
}
