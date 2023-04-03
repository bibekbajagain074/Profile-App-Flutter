// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My profile",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Profile",
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Icon(Icons.share),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/bibek.jpg"),
                        backgroundColor: Colors.red,
                        radius: 60.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Bibek Bajagain",
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "Web Developer",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Hello I am Bibek Bajagain. As a IT student I have knowledge in Web Development as well as App development .I have one Youtube channel where I upload Whatever I like ",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "cursive",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 10.0,
                  bottom: 10.0,
                  top: 10,
                ),
                child: Text(
                  "Social Link",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        final Uri _url =
                            Uri.parse('https://www.instagram.com/bwin_bibek/');
                      },
                      color: Colors.blue,
                      icon: Icon(
                        (FontAwesomeIcons.facebook),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                      },
                      color: Colors.pinkAccent,
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        final Uri _url =
                            Uri.parse('https://www.instagram.com/bwin_bibek/');
                      },
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blueGrey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        final Uri _url =
                            Uri.parse('https://www.instagram.com/bwin_bibek/');
                      },
                      icon: Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                  top: 10,
                ),
                child: Text(
                  "SKILLs",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  title: Text(
                    "Web Development",
                  ),
                  subtitle: Text("Html css Javascript"),
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(
                        "https://www.webhopers.com/wp-content/uploads/2022/02/website-designing-company-in-Karnal-1200x480.jpg"),
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  title: Text(
                    "App Development",
                  ),
                  subtitle: Text("Dart Flutter"),
                  leading: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(
                        "https://www.softwaretestinghelp.com/wp-content/qa/uploads/2019/06/TOP-APP-DEVELOPMENT-SOFTWARE.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
