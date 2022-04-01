import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class savoryfood extends StatefulWidget {
  const savoryfood({Key? key}) : super(key: key);

  @override
  State<savoryfood> createState() => _savoryfoodState();
}

class _savoryfoodState extends State<savoryfood> {
  CollectionReference menu = FirebaseFirestore.instance.collection('Menu');
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _calorie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        title: const Text('อาหารคาว'),
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
                          child: Image.asset("images/f1.jpg"),
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
                                title: Text("ข้าวแกงส้มผักรวมกับปลา"),
                                subtitle: Text("180 แคลอรี่"),
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
                                        'name': 'ข้าวแกงส้มผักรวมกับปลา',
                                        'calorie': '180 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('อาหารคาว'),
                                          content: const Text(
                                              'เพิ่มอาหารคาวเรียบร้อยเเล้ว'),
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
                          child: Image.asset("images/f2.jpg"),
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
                                title: Text("โจ๊กหมู/ข้าวต้มหมู"),
                                subtitle: Text("160 แคลอรี่"),
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
                                        'name': 'โจ๊กหมู/ข้าวต้มหมู',
                                        'calorie': '160 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('อาหารคาว'),
                                          content: const Text(
                                              'เพิ่มอาหารคาวเรียบร้อยเเล้ว'),
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
                          child: Image.asset("images/f3.jpg"),
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
                                title: Text("ยำวุ้นเส้นหมูสับ"),
                                subtitle: Text("120 แคลอรี่"),
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
                                        'name': 'ยำวุ้นเส้นหมูสับ',
                                        'calorie': '120 แคลอรี่',
                                        'uid': user.uid,
                                      });
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('อาหารคาว'),
                                          content: const Text(
                                              'เพิ่มอาหารคาวเรียบร้อยเเล้ว'),
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
