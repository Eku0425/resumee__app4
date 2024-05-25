import 'package:flutter/material.dart';

import 'Skills_Screen.dart';

class Languagescreen extends StatefulWidget {
  const Languagescreen({super.key});

  @override
  State<Languagescreen> createState() => _LanguagescreenState();
}

class _LanguagescreenState extends State<Languagescreen> {
  TextEditingController languages = TextEditingController();
  Map introduction = {};

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
              const SizedBox(width: 10),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ],
          ),
          actions: [
            const SizedBox(
              width: 40,
            ),
            // Text(
            //   "Back",
            //   style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.blueGrey.shade50),
            // ),
            const SizedBox(width: 100),
            const Text(
              "Language",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Spacer(),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...List.generate(
                  l2.length,
                      (index) => ListTile(
                    title: TextField(
                      controller: l2[index],
                      decoration: const InputDecoration(
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
                                l2.add(txtController);
                              });
                            },
                            icon: const Icon(Icons.add)),
                        GestureDetector(onTap: (){
                          setState(() {
                            l2.removeAt(index);
                          });
                        },

                            child: const Icon(Icons.delete)),
                      ],

                    ),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/pdf');
          },
        ),
      ),

    );
  }
}

List<TextEditingController> l2 = [txtController];
TextEditingController txtController = TextEditingController();
