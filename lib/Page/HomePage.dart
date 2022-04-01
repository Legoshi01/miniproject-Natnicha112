import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cutecalories/Page/drink.dart';
import 'package:cutecalories/Page/fruit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../AuthService.dart';
import 'ItemCalories.dart';
import 'LoginPage.dart';
import 'dessert.dart';
import 'profile.dart';
import 'savoryfood.dart';

// import 'add_product.dart';
// import 'edit_product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Add Food List'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const savoryfood(),
                      )).then((value) => setState(() {}));
                },
                splashColor: Colors.deepOrangeAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/icon1.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "อาหารคาว",
                        style: new TextStyle(fontSize: 30.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const dessert(),
                      )).then((value) => setState(() {}));
                },
                splashColor: Colors.deepOrangeAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/icon3.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "ของหวาน",
                        style: new TextStyle(fontSize: 30.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const drink(),
                      )).then((value) => setState(() {}));
                },
                splashColor: Colors.deepOrangeAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/icon4.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "เครื่องดื่ม",
                        style: new TextStyle(fontSize: 30.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const fruit(),
                      )).then((value) => setState(() {}));
                },
                splashColor: Colors.deepOrangeAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/icon2.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "ผลไม้",
                        style: new TextStyle(fontSize: 30.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // show(user),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.perm_contact_cal_rounded),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const profile(),
                      )).then((value) => setState(() {}));
                }),
            ListTile(
              leading: Icon(Icons.library_books_rounded),
              title: Text('ItemCalories'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ItemCalories(),
                    )).then((value) => setState(() {}));
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('log Out'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    )).then((value) => setState(() {}));
              },
            ),
            // const Divider(),
            // // Expanded(
            // //   child: Align(
            // //     alignment: Alignment.bottomLeft,
            // //     child: ListTile(
            // //       title: Text('Item 3'),
            // //       onTap: () {},
            // //     ),
            // //   ),
            // // ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     selectedFontSize: 20,
      //     selectedIconTheme: IconThemeData(color: Colors.amberAccent),
      //     selectedItemColor: Color.fromARGB(255, 10, 10, 10),
      //     unselectedItemColor: Colors.deepOrangeAccent,
      //     currentIndex: _currentIndex,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.library_books_rounded),
      //         label: 'ItemCalories',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.perm_contact_cal_rounded),
      //         label: 'Profile',
      //       ),
      //     ],
      //     onTap: (index) {
      //       setState(() {
      //         _currentIndex = index;
      //       });
      //     }),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Move to Add Product Page
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => const AddProductPage(),
      //         )).then((value) => setState(() {}));
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
