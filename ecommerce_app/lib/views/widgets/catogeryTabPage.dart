import 'package:flutter/material.dart';
//import 'package:ecommerce_app/asset/';

class catogeryTabPage extends StatefulWidget {
  const catogeryTabPage({super.key});
  @override
  State<StatefulWidget> createState() => _catogeryTabPageState();
}

class _catogeryTabPageState extends State<catogeryTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 7 / 2,
                      child: Image.network(
                        'https://dlcdnwebimgs.asus.com/gain/BDE1321D-F554-43CB-9159-BC4392543C62/w750/h470',
                        fit: BoxFit.cover,
                        //height: 100,
                        // width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: Text(
                        "Computers",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 7 / 2,
                      child: Image.network(
                        'https://img01.ztat.net/article/spp-media-p1/f653ab86cfe841c4951c6782e2068e18/dd0fdbb83c2240bab4594c4496f1acbd.jpg?imwidth=1800&filter=packshot',
                        fit: BoxFit.cover,
                        //height: 100,
                        // width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 33,
                      right: 10,
                      child: Text(
                        "T-shirts",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 7 / 2,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwI_pJHL2yswwzDBZtmfPWuQDvJ-l4JJzOHYZ-3ljnlGyN276bhWhOVbEiGvJZLTnc2m8&usqp=CAU',
                        fit: BoxFit.cover,
                        //height: 100,
                        // width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 40,
                      child: Text(
                        "Jeans",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 7 / 2,
                      child: Image.network(
                        'https://hips.hearstapps.com/hmg-prod/images/hoka-zinal-13085-1643565794.jpg',
                        fit: BoxFit.cover,
                        //height: 100,
                        // width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 10,
                      child: Text(
                        "Shoes",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 7 / 2,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJc0zbysohZM8K4gEuX20138hKqMqt5c9tujP2oU0BANklXEHr6NbaOi3942Dg734b6HU&usqp=CAU',
                        fit: BoxFit.cover,
                        //height: 100,
                        // width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 20,
                      child: Text(
                        "Sports",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
