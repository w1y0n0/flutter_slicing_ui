import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangePassword"),
        actions: [
          IconButton(
            onPressed: () {},
            color: primaryColor,
            icon: const Icon(
              Icons.save_as_rounded,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                prefixIcon: Icons.email,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              /*
              TODO: Implement this @ controller
              bool isHidenPassword = true;
              */
              TextFormField(
                obscureText: controller.isHidenPassword ? true : false,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: primaryColor,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.isHidenPassword = !controller.isHidenPassword;
                      controller.setState(() {});
                    },
                    icon: Icon(
                      controller.isHidenPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: 24.0,
                      color: controller.isHidenPassword
                          ? textfieldIconColor
                          : primaryColor,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
