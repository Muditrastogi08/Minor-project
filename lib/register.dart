import 'package:flutter/material.dart';
import 'package:minor_project/login.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  bool ishiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register with Us'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellowAccent])),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage('lib/img/verzeo.png'),
                  radius: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "REGISTER HERE",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                          color: Colors.yellow[900],
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    maxLength: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    obscureText: ishiddenpassword,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(Icons.visibility),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                      ),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.yellow[900],
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    maxLength: 20,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                      ),
                      prefixIcon: Icon(
                        Icons.contact_phone,
                        color: Colors.black,
                      ),
                      labelText: "Phonenumber",
                      labelStyle: TextStyle(
                          color: Colors.yellow[900],
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    maxLength: 20,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const login()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _togglePasswordView() {
    ishiddenpassword = !ishiddenpassword;
    setState(() {});
  }
}
