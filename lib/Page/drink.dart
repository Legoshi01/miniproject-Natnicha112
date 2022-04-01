import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class drink extends StatefulWidget {
  const drink({Key? key}) : super(key: key);

  @override
  State<drink> createState() => _drinkState();
}

class _drinkState extends State<drink> {
  CollectionReference menu = FirebaseFirestore.instance.collection('Menu');
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _calorie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        title: const Text('เครื่องดื่ม'),
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
                          child: Image.asset("images/d1.jpg"),
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
                                title: Text("นมเย็น"),
                                subtitle: Text("425 แคลอรี่"),
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
                                        'name': 'เย็นนม',
                                        'calorie': '425 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('เครื่องดื่ม'),
                                          content: const Text(
                                              'เพิ่มเครื่องดื่มเรียบร้อยเเล้ว'),
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
                          child: Image.asset("images/d2.png"),
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
                                title: Text("ชานมไข่มุก "),
                                subtitle: Text("360 แคลอรี่"),
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
                                        'name': 'ชานมไข่มุก ',
                                        'calorie': '360 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('เครื่องดื่ม'),
                                          content: const Text(
                                              'เพิ่มเครื่องดื่มเรียบร้อยเเล้ว'),
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
                          child: Image.asset("images/d3.jpg"),
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
                                title: Text("โกโก้เย็น"),
                                subtitle: Text("335 แคลอรี่"),
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
                                        'name': 'โกโก้เย็น',
                                        'calorie': '335 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('เครื่องดื่ม'),
                                          content: const Text(
                                              'เพิ่มเครื่องดื่มเรียบร้อยเเล้ว'),
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
