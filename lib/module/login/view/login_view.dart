import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui/core.dart';
import 'package:flutter_slicing_ui/core/theme/theme_config.dart';
import 'package:flutter_slicing_ui/core/widget/button/button.dart';
import 'package:flutter_slicing_ui/core/widget/button/textfield/textfield.dart';
import 'package:flutter_slicing_ui/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "to MagicBook",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Write less do more",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icon/icon.png",
                    width: 64.0,
                    height: 64.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const Spacer(),
              QTextField(
                label: "Email",
                prefixIcon: Icons.email,
                onFieldSubmitted: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
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
                onFieldSubmitted: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Login",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterView()),
                ),
                child: InkWell(
                  onTap: () => Get.to(const ForgotPasswordView()),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                QButton(
                  label: "Sign Up",
                  color: Colors.grey[600],
                  onPressed: () => Get.to(const RegisterView()),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
