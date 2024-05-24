import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.blueGrey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade50,
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
                    color: Colors.black,
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
              ...List.generate(
                  l1.length,
                  (index) => ListTile(
                        title: TextField(
                          controller: l1[index],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        trailing: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  TextEditingController txtController =
                                      TextEditingController();
                                  setState(() {
                                    l1.add(txtController);
                                  });
                                },
                                icon: Icon(Icons.add)),
                            GestureDetector(onTap: (){
                              setState(() {
                                l1.removeAt(index);
                              });
                            },

                                child: Icon(Icons.delete)),
                          ],
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

List<TextEditingController> l1 = [txtcontroller];
TextEditingController txtController = TextEditingController();
