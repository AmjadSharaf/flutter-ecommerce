import 'package:ecomme/core/constant/CustomElevatedButton.dart';
import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/core/constant/custom_text_fild.dart';
import 'package:flutter/material.dart';

class BackUpPassword extends StatefulWidget {
  BackUpPassword({super.key});

  @override
  State<BackUpPassword> createState() => _BackUpPasswordState();
}

class _BackUpPasswordState extends State<BackUpPassword> {
  final backcontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    backcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                label: "Enter Email",
                controller: backcontroller,
                icon: Icons.email,
              ),
              SizedBox(height: 30),
              Customelevatedbutton(
                text: "Enter",
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),

                backgroundColor: KprimaryColor,
                height: 100,
                width: 50,
                borderRadius: 10,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
