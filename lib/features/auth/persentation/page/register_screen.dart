import 'package:ecomme/core/constant/CustomElevatedButton.dart';
import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/core/constant/custom_text_fild.dart';
import 'package:ecomme/core/constant/text_style.dart';
import 'package:ecomme/features/auth/persentation/page/code_chek.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  final namecontroller = TextEditingController();

  final addresscontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    namecontroller.dispose();
    addresscontroller.dispose();
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
                  text: "Register",
                  fontSize: 20,
                  weight: FontWeight.bold,
                ),
                SizedBox(height: 32),
                CustomTextField(
                  label: "Full Name ",
                  controller: namecontroller,
                  icon: Icons.person_2_outlined,
                ),
                SizedBox(height: 32),
                CustomTextField(
                  label: "Address",
                  controller: addresscontroller,
                  icon: Icons.location_on,
                ),

                SizedBox(height: 16),
                CustomTextField(
                  label: "Email",
                  controller: emailcontroller,
                  icon: Icons.email,
                ),
                SizedBox(height: 24),

                CustomTextField(
                  label: "Password",
                  controller: passwordcontroller,
                  icon: Icons.password,
                ),

                SizedBox(height: 24),
                Customelevatedbutton(
                  text: "Register",

                  backgroundColor: KprimaryColor,
                  height: 50,
                  width: 100,
                  borderRadius: 10,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: KbackgroundColors,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CodeChek()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
