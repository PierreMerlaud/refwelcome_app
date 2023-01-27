import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var platform = Theme
        .of(context)
        .platform;
    print("size: $size");
    print("platform: $platform");
    return Scaffold(
      appBar: AppBar(
        title: const Text('REFUGEES WELCOME !'),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('LES KEUFS ARRIVENT !')));
            },
          ),
        ],
      ),

      body: Center(
        child: Container(
          height: size.height,
          color: Color.fromRGBO(194, 231, 255, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/night_sky.jpg',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 430),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: myProfilPic(100),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Jojo Anas Pierrot",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                  Text(
                    "Le triangle des cacas qui puent d'ADA TECH SCHOOL, ceux qui passent par là disparaissent. Issu d'un mélange Choletais, Berrichon et de la République des Maris...",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar myProfilPic(double radius) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage("images/nicolas_cage_crazy.webp"),
    );
  }

//  Container buttonContainer({IconData? icon, String? text}) {
//    return Container(
//      margin: EdgeInsets.only(left:10, right:10),
//      padding: EdgeInsets.all(15),
//      child: (icon == null) {
//        ? Text(text ?? "", style: TextStyle(color: Colors.white),)
//    }, // PAUSE VIDEO 87 à 7min19
} //End Widget

 // End class
