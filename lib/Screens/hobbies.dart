import 'package:flutter/material.dart';

class HobbiesScren extends StatefulWidget {
  const HobbiesScren({super.key});

  @override
  State<HobbiesScren> createState() => _HobbiesScrenState();
}

class _HobbiesScrenState extends State<HobbiesScren> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffEFF6FF),
            appBar: AppBar(backgroundColor: Color(0xffEFF6FF),
              leading: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap:
                            () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,color: Colors.blue.shade800,)),
                  )
                ],
              ),
              actions: [
                SizedBox(width: 30),
                Text('Back',style: TextStyle(color: Colors.blue.shade800,fontSize: 20),),SizedBox(width: 70),
                Text('Hobbies',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                Spacer(),
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text('Hobbies',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(right: 15,left: 15),
                    child: TextField(
                      controller: hobbies,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                        ),hintText: 'Cricket...',
                      ),
                    ),
                  ),
                  SizedBox(height: 590),
                  Container(height: 60,width: 350,
                    child: InkWell(onTap:
                        () {
                      Navigator.pushNamed(context, '/languages');
                      introduction = {
                        'name':hobbies,

                      };
                    },
                        child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                        )
                        )
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.shade700),)
                ],
              ),
            ),
          ),
        )
    );
  }
}
  }
}
