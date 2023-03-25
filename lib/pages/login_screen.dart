import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            print("hello");
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/icon.png',
                  width: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login ",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("to you account",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),

          //FORM HANDLING
          Container(
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email Address"),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color.fromARGB(255, 247, 245, 245),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password"),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Type here...",
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.visibility,
                              color: Colors.blue,
                            ),
                            onTap: () {},
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Color.fromARGB(255, 247, 245, 245),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(fontSize: 13),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Register"),
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                Size(200, 50.0))),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Login"),
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(8.0),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(200, 50.0))))
                    ],
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
