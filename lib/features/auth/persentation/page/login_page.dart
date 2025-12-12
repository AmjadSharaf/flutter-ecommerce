import 'package:ecomme/core/constant/CustomElevatedButton.dart';
import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/core/constant/custom_text_fild.dart';
import 'package:ecomme/core/constant/text_style.dart';
import 'package:ecomme/features/auth/persentation/page/back_up_password.dart';
import 'package:ecomme/features/auth/persentation/page/code_chek.dart';
import 'package:ecomme/features/auth/persentation/page/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColors,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyTextstyle(
                  color: KprimaryColor,
                  text: "Log in",
                  fontSize: 20,
                  weight: FontWeight.bold,
                ),
                SizedBox(height: 32),
                CustomTextField(
                  label: "Email",
                  controller: emailcontroller,
                  icon: Icons.email,
                ),

                SizedBox(height: 16),
                CustomTextField(
                  label: "Password",
                  controller: passwordcontroller,
                  icon: Icons.password,
                ),
                SizedBox(height: 24),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BackUpPassword()),
                    );
                  },
                  child: MyTextstyle(
                    color: KprimaryColor,
                    text: "Forget your password?",
                    fontSize: 20,
                    weight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height / 80),
                Customelevatedbutton(
                  text: "log in",
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),

                  backgroundColor: KprimaryColor,
                  height: 50,
                  width: 100,
                  borderRadius: 10,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CodeChek()),
                    );
                  },
                ),

                SizedBox(height: MediaQuery.of(context).size.height / 80),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: MyTextstyle(
                    color: KprimaryColor,
                    text: "Don't have an account?",
                    fontSize: 20,
                    weight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
