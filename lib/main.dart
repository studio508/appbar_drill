import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('Shopping cart button is clicked');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              print('search button is clicked');
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/doosan.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/ob.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/ob.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: const Text('DOOSAN'),
              accountEmail: const Text('dsbears@doosan.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[800],
              ),
              title: const Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[800],
              ),
              title: const Text('Setting'),
              onTap: () {
                print('setting is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: const Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
