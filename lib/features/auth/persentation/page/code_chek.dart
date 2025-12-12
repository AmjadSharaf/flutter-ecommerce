import 'package:ecomme/features/auth/persentation/widget/CustomElevatedButton.dart';
import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/features/auth/persentation/widget/custom_text_fild.dart';
import 'package:ecomme/presentation/main_screen.dart';
import 'package:flutter/material.dart';

class CodeChek extends StatefulWidget {
  CodeChek({super.key});

  @override
  State<CodeChek> createState() => _CodeChekState();
}

class _CodeChekState extends State<CodeChek> {
  final codecontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    codecontroller.dispose();
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
                label: "Enter code ",
                controller: codecontroller,
                icon: Icons.code,
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
                height: 50,
                width: 100,
                borderRadius: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
