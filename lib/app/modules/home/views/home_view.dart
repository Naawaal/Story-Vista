import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_vista/app/utils/snack_bar_util.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // SnackBarUtil.showSuccessSnackBar("Success");
          SnackBarUtil.showWarningSnackBar(
              "This is an error message from SnackBarUtil");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
