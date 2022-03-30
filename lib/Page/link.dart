import 'package:flutter/material.dart';
import 'HomePage.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
          ],
        ),
      ),
    );
  }
}




































// import 'package:cutecalories/Page/profile.dart';
// import 'package:flutter/material.dart';
// import 'HomePage.dart';
// import 'ItemCalories.dart';

// class Launcher extends StatefulWidget {
//   static const routeName = '/';

//   const Launcher({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return _LauncherState();
//   }
// }

// class _LauncherState extends State<Launcher> {
//   int _selectedIndex = 0;
//   final List<Widget> _pageWidget = <Widget>[
//     const HomePage(),
//     const ItemCalories(),
//     const profile(),
//     // const Home(),
//     // const About(),
//     // const Profile(),
//     // const Contact(),
//     // const Settings(),
//   ];
//   final List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: 'Home',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.library_books_rounded),
//       label: 'ItemCalories',
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.perm_contact_cal_rounded),
//       label: 'Profile',
//     ),
//   ];

//   static get selectedFontSize => null;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pageWidget.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: _menuBar,
//         selectedFontSize: 20,
//         selectedIconTheme: IconThemeData(color: Colors.amberAccent),
//         selectedItemColor: Color.fromARGB(255, 10, 10, 10),
//         unselectedItemColor: Colors.deepOrangeAccent,
//         onTap: _onItemTapped,
//         currentIndex: _selectedIndex,
//       ),
//     );
//   }
// }
