import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ItemCalories extends StatefulWidget {
  const ItemCalories({Key? key}) : super(key: key);

  @override
  State<ItemCalories> createState() => _ItemCaloriesState();
}

class _ItemCaloriesState extends State<ItemCalories> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        title: const Text('ItemCalories'),
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
        child: Column(
          children: [
            showList(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Move to Add Product Page
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => const addfooditems(),
      //         )).then((value) => setState(() {}));
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  Widget showList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('Menu')
          .where('uid', isEqualTo: user.uid)
          .snapshots(),
      builder: (context, snapshot) {
        List<Widget> myList;

        if (snapshot.hasData) {
          // Convert snapshot.data to jsonString
          var products = snapshot.data;

          // Define Widgets to myList
          myList = [
            Column(
              children: products!.docs.map((DocumentSnapshot doc) {
                Map<String, dynamic> data = doc.data()! as Map<String, dynamic>;
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        height: 70,
                        child: ListTile(
                          onTap: () {},
                          leading: const Icon(Icons.library_books_rounded),
                          title: Text('\t\t${data['name']}'),
                          subtitle: Text('\t\t ${data['calorie']}'),
                          trailing: IconButton(
                            onPressed: () {
                              // Create Alert Dialog
                              var alertDialog = AlertDialog(
                                title: const Text('ลบรายการที่บันทึก'),
                                content: Text(
                                    'คุณต้องการลบลิตส์ ${data['name']} ใช่หรือไม่'),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('ยกเลิก')),
                                  TextButton(
                                      onPressed: () {
                                        var alertDelete = AlertDialog(
                                          title: const Text('Delete success'),
                                          actions: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                                child: const Text('ยืนยัน')),
                                          ],
                                        );
                                        deleteList(doc.id);
                                      },
                                      child: const Text('ยืนยัน')),
                                ],
                              );
                              // Show Alert Dialog
                              showDialog(
                                  context: context,
                                  builder: (context) => alertDialog);
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ];
        } else if (snapshot.hasError) {
          myList = [
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('ข้อผิดพลาด: ${snapshot.error}'),
            ),
          ];
        } else {
          myList = [
            const SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('อยู่ระหว่างประมวลผล'),
            )
          ];
        }

        return Center(
          child: Column(
            children: myList,
          ),
        );
      },
    );
  }

  Future<void> deleteList(String? id) {
    return FirebaseFirestore.instance
        .collection('Menu')
        .doc(id)
        .delete()
        .then((value) => Navigator.pop(context))
        .catchError((error) => print("Failed to delete user: $error"));
  }
}
