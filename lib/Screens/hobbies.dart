import 'package:flutter/material.dart';

class HobbiesScren extends StatefulWidget {
  const HobbiesScren({super.key});

  @override
  State<HobbiesScren> createState() => _HobbiesScrenState();
}

class _HobbiesScrenState extends State<HobbiesScren> {
  TextEditingController hobbies = TextEditingController();
  Map introduction = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey.shade50,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade50,
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
                        color: Colors.black,
                      )),
                )
              ],
            ),
            actions: [
              SizedBox(width: 30),
              // Text('Back', style: TextStyle(
              // color: Colors.blueGrey.shade50, fontSize: 20),),
              SizedBox(width: 70),
              Text(
                'Hobbies',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ...List.generate(
                    l3.length,
                    (index) => ListTile(
                          title: TextField(
                            controller: l3[index],
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
                                      l3.add(txtController);
                                    });
                                  },
                                  icon: Icon(Icons.add)),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      l3.removeAt(index-1);
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
      ),
    );
  }
}

List<TextEditingController> l3 = [txtController];
TextEditingController txtController = TextEditingController();
