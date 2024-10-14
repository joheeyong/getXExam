import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("Counter ${controller.counter.value}")),
            GestureDetector(
              onTap: () => controller.increaseCounter(),
              child: const Text("Increase"),
            )
          ],
        ),
      ),
    );
  }
}
