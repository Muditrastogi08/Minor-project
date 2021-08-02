import 'package:flutter/material.dart';
import 'package:minor_project/dashboard.dart';
import './global.dart' as global;

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  bool ishiddenpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your Account'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.yellowAccent],
              ),
            ),
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
                      "MEMBER LOGIN",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    onChanged: (value) {
                      global.username = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      } else {
                        return null;
                      }
                    },
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
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    onChanged: (value) {
                      global.username = value;
                    },
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
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const dashboard()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                )
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
