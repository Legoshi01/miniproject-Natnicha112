import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class dessert extends StatefulWidget {
  const dessert({Key? key}) : super(key: key);

  @override
  State<dessert> createState() => _dessertState();
}

class _dessertState extends State<dessert> {
  CollectionReference menu = FirebaseFirestore.instance.collection('Menu');
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _calorie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        title: const Text('ของหวาน'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        // padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: Container(
                height: 90,
                color: Colors.white,
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("images/e1.jpg"),
                          flex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            const Expanded(
                              flex: 5,
                              child: ListTile(
                                title: Text("ลอดช่อง"),
                                subtitle: Text("133 แคลอรี่"),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  TextButton(
                                    child: const Text("Add Food"),
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection("Menu")
                                          .add({
                                        'name': 'ลอดช่อง',
                                        'calorie': '133 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('ของหวาน'),
                                          content: const Text(
                                              'เพิ่มของหวานเรียบร้อยเเล้ว'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      flex: 8,
                    ),
                  ],
                ),
              ),
              elevation: 8,
              margin: const EdgeInsets.all(10),
            ),
            Card(
              child: Container(
                height: 90,
                color: Colors.white,
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("images/e2.jpg"),
                          flex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            const Expanded(
                              flex: 5,
                              child: ListTile(
                                title: Text("สตรอเบอร์รี่ชีสเค้ก"),
                                subtitle: Text("200 แคลอรี่"),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  TextButton(
                                    child: const Text("Add Food"),
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection("Menu")
                                          .add({
                                        'name': 'สตรอเบอร์รี่ชีสเค้ก',
                                        'calorie': '200 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('ของหวาน'),
                                          content: const Text(
                                              'เพิ่มของหวานเรียบร้อยเเล้ว'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      flex: 8,
                    ),
                  ],
                ),
              ),
              elevation: 8,
              margin: const EdgeInsets.all(10),
            ),
            Card(
              child: Container(
                height: 90,
                color: Colors.white,
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Expanded(
                          child: Image.asset("images/e3.jpg"),
                          flex: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            const Expanded(
                              flex: 5,
                              child: ListTile(
                                title: Text("ไอศกรีมช็อคโกแลต"),
                                subtitle: Text("300 แคลอรี่"),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  TextButton(
                                    child: const Text("Add Food"),
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection("Menu")
                                          .add({
                                        'name': 'ไอศกรีมช็อคโกแลต',
                                        'calorie': '300 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('ของหวาน'),
                                          content: const Text(
                                              'เพิ่มของหวานเรียบร้อยเเล้ว'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      flex: 8,
                    ),
                  ],
                ),
              ),
              elevation: 8,
              margin: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addProduct() async {
    return menu
        .add({'name': _name.text, 'calorie': _calorie.text})
        .then((value) => Navigator.pop(context))
        .catchError((error) => print("Failed to add product: $error"));
  }
}
