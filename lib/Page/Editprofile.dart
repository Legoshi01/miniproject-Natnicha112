import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  CollectionReference menu = FirebaseFirestore.instance.collection('Users');
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _username = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        title: const Text('Edit Proile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _username,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Username',
                ),
              ),
              TextFormField(
                controller: _weight,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.line_weight),
                  hintText: 'Enter your Weight',
                  labelText: 'Weight',
                ),
              ),
              TextFormField(
                controller: _height,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.height),
                  hintText: 'Enter your Height',
                  labelText: 'Height',
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      left: 100, right: 100, top: 10, bottom: 8),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    child: const Text('Edit Proile'),
                    onPressed: () {
                      FirebaseFirestore.instance
                          .collection('Users')
                          .doc(user.uid)
                          .update({
                            'name': _username.text,
                            'weight': _weight.text,
                            'height': _height.text,
                          })
                          .then(
                            (value) => print("User Added"),
                          )
                          .catchError(
                              (error) => print("Failed to add user: $error"));
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('แก้ไขโปรไฟล์'),
                          content: const Text('แก้ไขข้อมูลเรียบร้อยเเล้ว'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                      const SizedBox(
                        width: 8,
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
