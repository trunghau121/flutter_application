import 'dart:ffi';

import 'package:flutter/material.dart';

class MyBodyPage extends StatefulWidget {
  final double height;
  const MyBodyPage({Key? key, required this.height}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyBodyState();
  }
}

class MyBodyState extends State<MyBodyPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          height: widget.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'YOUR\nART\nMUSEUM',
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      '151 3rd St\nSan Francisco, CA 94103',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      hintText: "Email address",
                      hintStyle: TextStyle(color: Colors.black)),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => login(),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            )),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.only(top: 20, bottom: 20))),
                        child: const Text(
                          "Log In",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                  )),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Don’t have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void login() {}
}
