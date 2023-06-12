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
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20.0),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: _UsernameController,
                  decoration: const InputDecoration(
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
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: _AgeController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: _RegionController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Period length (in days)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your period length';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
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
                const SizedBox(height: 20.0),
                TextFormField(
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
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('Profile');

                  },
                  child: const Text('Save'),
                ),
              ]),
        ),
      ),
    );
  }
}
