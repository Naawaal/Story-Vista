import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfileUploadedBookView extends GetView {
  const ProfileUploadedBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileUploadedBookView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfileUploadedBookView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
