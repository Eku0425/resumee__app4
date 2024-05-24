import 'package:flutter/material.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

TextEditingController txtcontroller = TextEditingController();
Map introduction = {};

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffEFF6FF),
          appBar: AppBar(
            backgroundColor: Color(0xffEFF6FF),
            centerTitle: true,
            leading: Row(
              children: [
                SizedBox(width: 10),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    )),
              ],
            ),
            actions: [
              SizedBox(
                width: 40,
              ),
              // Text(
              //   "Back",
              //   style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.blueGrey.shade50),
              // ),
              SizedBox(width: 100),
              Text(
                "Skills",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                           // hintText: 'C++',
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.add,
                        size: 33,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.delete,
                        size: 33,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 490),
                InkWell(
                  onTap: () {
                    setState(() {



                    });
                  },
                  child: Container(
                    height: 60,
                    width: 350,
                    child: Center(
                        child: Text(
                      'ADD SKILL',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.blueGrey.shade50, width: 2)),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 60,
                  width: 350,
                  child: InkWell(
                      onTap: () {
                       // Navigator.pushNamed(context, '/education');
                        introduction = {
                          'name': TextEditingController,
                        };
                      },
                      child: GestureDetector( onTap: (){

                        Navigator.pushNamed(context, '/edu');
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
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey),
                )
              ],
            ),
          )),
    );
  }
}
List<TextEditingController>l1=[];
TextEditingController txtEditingController=TextEditingController();