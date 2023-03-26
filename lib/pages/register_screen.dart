import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterScreen> {
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myPasswordController = TextEditingController();
  TextEditingController myNameController = TextEditingController();

  bool _isChecked = false;

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
              Navigator.pushNamed(context, '/login');
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                          "Register ",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("an account",
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

              // FORM HANDLING
              Container(
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name"),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            autofocus: true,
                            validator: (value) {
                              if (value == null || value == value.isEmpty) {
                                return 'Please Enter A valid Name';
                              }
                              return null;
                            },
                            controller: myNameController,
                            decoration: InputDecoration(
                              hintText: "Enter Your Name",
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email Address"),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value == value.isEmpty) {
                                return 'Please Enter A valid Password Address';
                              }
                              return null;
                            },
                            controller: myEmailController,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Password"),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value == value.isEmpty ||
                                  value.length < 8) {
                                return 'Please Enter A valid Password Address';
                              }
                              return null;
                            },
                            controller: myPasswordController,
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
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                          ),
                          Text(
                              "By Registering you confirm that you accept our terms and Conditions"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text("Login"),
                            style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                    Size(200, 50.0))),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("Next"),
                              style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(8.0),
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
        ));
  }
}
