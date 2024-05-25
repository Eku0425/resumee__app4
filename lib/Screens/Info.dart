import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
                Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.black,
                ),
                //Text('Back',style: TextStyle(color: Colors.blue.shade800,fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            title: Text('Edit Detail',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),

          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  ' Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 27),
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/intro');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.person,
                                  size: 32,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'personal',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 170),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.mail,
                                  size: 32,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Contact',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 175),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/Skills');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.construction,
                                  size: 32,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Skills',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 195),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/edu');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.school,
                                  size: 38,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Educations',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 140),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/experience');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.shopping_bag,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Experience',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 140),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/hobbies');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.flight,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Hobbies',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 165),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lang');
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey.shade50,
                                child: Icon(
                                  Icons.language,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Languages',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            SizedBox(width: 150),
                            GestureDetector(onTap: () {
                              Navigator.of(context).pushNamed('/lang');
                            },
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
