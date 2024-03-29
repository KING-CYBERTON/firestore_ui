// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  late DateTime selectedDate;
  final _formKey = GlobalKey<FormState>();
  final _UsernameController = TextEditingController();
  final _AgeController = TextEditingController();
  final _RegionController = TextEditingController();
  final _NTPController = TextEditingController();
  final _BioController = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    String? emailValidator(String? value) {
      if (value == null || value.isEmpty) {
        return 'Email is required';
      }
      final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
      if (!emailRegExp.hasMatch(value)) {
        return 'Invalid email address';
      }
      return null;
    }

    return Scaffold(
 
      body: Center(
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
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 20.0),
                      const Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        width: 300,
                        child: TextFormField(
                          controller: _UsernameController,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'UserName',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Username';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        width: 300,
                        child: TextFormField(
                          controller: _AgeController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        width: 300,
                        child: TextFormField(
                          controller: _RegionController,
                          decoration: const InputDecoration(
                            labelText: 'Enter your region',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your region';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        width: 300,
                        child: TextFormField(
                          controller: _NTPController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'No of trees planted',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your NO of trees';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        width: 300,
                        child: TextFormField(
                          controller: _BioController,
                          decoration: const InputDecoration(
                            labelText: 'Enter Bio data',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a Bio data';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed('Profile');
                        },
                        child: const Text('Save'),
                      ),
                      SizedBox(height: 40,)
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
