import 'package:firestore_ui/Views/Splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tree Life'), actions: [
        IconButton(
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onPressed: () {
            Get.toNamed('/Profile');
          },
        ),
      ]),
      body:Center(
        child: Container(
                 width: 350,
                 height: 600,
                
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/Splash.jpg"),
                      fit: BoxFit.fill),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(1, 1),
                      color: Color.fromARGB(255, 145, 56, 115),
                    )
                  ],
                  border: Border.all(
                    color: Color.fromARGB(255, 139, 51, 103),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: SingleChildScrollView(
                  child: Column(
                      
                    children: [
                      const SizedBox(height: 30),
                      const CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                      
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 46, 75, 61).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          " Name: John Doe ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                        Container(
                              width: 300,
                              decoration: BoxDecoration(
                                 color: Color.fromARGB(255, 46, 75, 61).withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                "Biograpy: I am free spirited and energetic on the green belt movement",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                      
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                           color: Color.fromARGB(255, 46, 75, 61).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          "Region: Asia  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                 color: Color.fromARGB(255, 46, 75, 61).withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                "Age: 24",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                 color: Color.fromARGB(255, 46, 75, 61).withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                "No of trees: 29 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                         
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shadowColor: const Color.fromARGB(26, 81, 160, 180),
                        ),
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.lightGreen[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      )
    );        
}
}