import 'package:flutter/material.dart';
import '../AuthService.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 204, 194),
      appBar: AppBar(
        title: const Text('Register'),
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
                  icon: Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Username',
                ),
              ),
              TextFormField(
                controller: _weight,
                decoration: const InputDecoration(
                  icon: Icon(Icons.line_weight),
                  hintText: 'Enter your Weight',
                  labelText: 'Weight',
                ),
              ),
              TextFormField(
                controller: _height,
                decoration: const InputDecoration(
                  icon: Icon(Icons.height),
                  hintText: 'Enter your Height',
                  labelText: 'Height',
                ),
              ),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Enter your Email',
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: 'Enter your password',
                  labelText: 'Password',
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      left: 100, right: 100, top: 10, bottom: 8),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    child: const Text('Register'),
                    onPressed: () {
                      registerUser(_username.text, _weight.text, _height.text,
                              _email.text, _password.text)
                          .then((value) => {
                                if (value != null)
                                  {
                                    print('add complete'),
                                    Navigator.pop(context),
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text('Register'),
                                        content: const Text(
                                            'สมัครสมาชิกเรียบร้อยเเล้ว'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                  }
                                else
                                  {
                                    print('error'),
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text('Register Error'),
                                        content: const Text(
                                            'กรุณากรอกข้อมูลให้ถูกต้องหรือครบถ้วน'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                  },
                              });
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
