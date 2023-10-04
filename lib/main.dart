import 'package:flutter/material.dart';
import 'package:my_protfolio1/Fragment/Contact.dart';
import 'package:my_protfolio1/Fragment/Skills.dart';
import 'package:my_protfolio1/Fragment/Experiences.dart';
import 'package:my_protfolio1/Fragment/About.dart';
import 'package:my_protfolio1/Fragment/Education.dart';
import 'package:my_protfolio1/Fragment/Contact.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      theme: ThemeData(
        primaryColor: Colors.black87,
        hintColor: Colors.black87,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            color: Colors.black87,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: Theme.of(context).textTheme.headline6!,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.blue),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.school_sharp, color: Colors.blue),
                text: 'Education',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.blue),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.blue),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.contact_phone, color: Colors.blue),
                text: 'Contact',
              ),

            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54, // Set the background color of the drawer to black
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "S.M. Thahidul Islam",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: Text(
                      "islam15-3949@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("lib/Assets/images/my_phot.jpg"),

                    ),

                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'About_me',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About())
                    );

                  },
                ),
                ListTile(
                  leading: Icon(Icons.school_sharp),
                  title: Text(
                    'Education',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Education())
                    );

                  },
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text(
                    'Skills',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Skills())
                    );

                  },
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(
                    'Experiences',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Experiences())
                    );

                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_phone),
                  title: Text(
                    'Contact',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact())
                    );

                  },
                ),

                // Add more ListTile items for other navigation options with white text color
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            About(),
            Education(),
            Skills(),
            Experiences(),
            Contact(),
          ],
        ),
      ),
    );
  }
}
