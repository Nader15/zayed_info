import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              _image == null
                  ? GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4.5,
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey.shade300,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                  size: 50,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.grey,
                                  ),
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        ClipOval(
                          child: Image.file(
                            _image,
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        FlatButton(
                            child: Text(
                              "remove",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              setState(() {
                                _image = null;
                              });
                            }),
                      ],
                    ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Full name",
                        hintStyle: hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Phone",
                        hintStyle: hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: hintStyle,
                      ),
                    ),
                    SizedBox(height: 40),
                    RaisedButton(
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      color: Colors.deepOrange,
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Save",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle hintStyle = TextStyle(color: Colors.grey.shade400);
}
