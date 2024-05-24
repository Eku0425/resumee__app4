import 'package:flutter/material.dart';

import 'Intro.dart';

class Experincescreen extends StatefulWidget {
  const Experincescreen({super.key});

  @override
  State<Experincescreen> createState() => _ExperincescreenState();
}

class _ExperincescreenState extends State<Experincescreen> {
  get experiences => null;

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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue.shade800,
                        )),
                  ),
                ],
              ),
              actions: [
                SizedBox(width: 30),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.blue.shade800,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 40),
                Text(
                  'Experience',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 20, top: 600),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 350,
                    child: Center(
                        child: Text(
                      'Add Education',
                      style: TextStyle(
                          color: Colors.blueGrey.shade50,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.blueGrey.shade50, width: 2)),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 60,
                    width: 350,
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/hobbies');
                          introduction = {
                            'name': experiences,
                          };
                        },
                        child: GestureDetector(onTap: (){
                          Navigator.pushNamed(context, '/hobbies');
                        },

                            child: Center(
                                child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )))),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
