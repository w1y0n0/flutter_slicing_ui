import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core.dart';
import 'package:flutter_slicing_ui/core/widget/button/button.dart';
import 'package:flutter_slicing_ui/core/widget/button/textfield/textfield.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ForgotPassword"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            QTextField(
              label: "Email",
              onChanged: (text) {},
            ),
            const SizedBox(
              height: 12.0,
            ),
            // QButton(
            //   label: "Forgot Password",
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: QButton(
          label: "Forgot Password",
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
