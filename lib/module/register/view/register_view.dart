import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core.dart';
import 'package:flutter_slicing_ui/core/theme/theme_config.dart';
import 'package:flutter_slicing_ui/core/widget/button/button.dart';
import 'package:flutter_slicing_ui/state_util.dart';
import '../../../core/widget/button/textfield/textfield.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        actions: const [],
        /*
          HAPUS TOMBOL BACK (<=)
        */
        leadingWidth: 0.0,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              /* Cek tinggi page dari bawah jika keyboard muncul */
              if (MediaQuery.of(context).viewInsets.bottom == 0) ...[
                Image.asset(
                  "assets/icon/icon.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
              QTextField(
                prefixIcon: Icons.person_pin,
                label: "Full Name",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QTextField(
                prefixIcon: Icons.email,
                label: "Email",
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
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Create an Account",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By signing up, you aggree to our\n',
                      style: TextStyle(
                        color: disabledTextColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: disabledTextColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    ),
                  ],
                ),
              ),
              // Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: QButton(
        color: Colors.white,
        labelColor: primaryColor,
        label: "I have an account",
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: Wrap(
      //   runSpacing: 10,
      //   spacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.grey,
      //       width: MediaQuery.of(context).size.width,
      //       height: 100,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "I have an account",
      //             style: TextStyle(
      //               fontSize: 16.0,
      //               fontWeight: FontWeight.bold,
      //               color: primaryColor,
      //             ),
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
