import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

TextEditingController name = TextEditingController();
String txtname = name.text;
TextEditingController birthday = TextEditingController();
String txtbirthday = name.text;
TextEditingController personalstaement = TextEditingController();
String txtpersonal = name.text;

TextEditingController phone = TextEditingController();
String txtphone = phone.text;

Map introduction = {};

bool istrue = false;

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey.shade50,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade50,
            centerTitle: true,
            leading: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/persoanldetail');
                    },
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue,
                        ))),
                // Text('Back',style: TextStyle(color: Colors.blue),)
              ],
            ),
            title: Text(
              'Intro',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: (!istrue)
                      ? Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.blueGrey.shade100)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Icon(Icons.person,
                                    size: 80, color: Colors.blueGrey),
                              ),
                              Text(
                                'Edit',
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                        )
                      : Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(shape: BoxShape.circle,image: (fileImage!=null)?DecorationImage(fit: BoxFit.cover,image: FileImage(fileImage!)): null)
                  ),
                      // : CircleAvatar(
                      //     radius: 70,
                      //     backgroundImage:
                      //         (imgpath != null) ? FileImage(imgpath!) : null,
                      //   ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tap to Upload',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            istrue = true;
                            setimg();
                          });
                        },
                        icon: Icon(Icons.image))
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text(
                    ' First Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      //hintText: 'nirav Raval',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text(
                    'Last Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    controller: birthday,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // hintText: '13 dec 2001',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Padding(
                //   padding: const EdgeInsets.only(right: 180),
                //   child: Text('Personal Statement',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                // ),
                //  Padding(
                //padding: const EdgeInsets.only(right: 15,left: 15),
                // child: TextField(
                //   controller: phone,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                //    // hintText: 'I Am Hard-Working individual with a passion...',
                //   ),
                // ),
                // ),
                SizedBox(height: 100),
                Container(
                  height: 60,
                  width: 350,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                        introduction = {
                          'name': txtname,
                          'birthday': txtbirthday,
                          'personalstatement': txtpersonal,
                          'phone': txtphone,
                        };
                      },
                      child: GestureDetector(onTap: (){

                        Navigator.pushNamed(context, '/contact');
                      },
                        child: Center(
                            child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                      )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> setimg() async {
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
     fileImage = File(image!.path);
    });
  }
}

ImagePicker picker = ImagePicker();
File? fileImage;
