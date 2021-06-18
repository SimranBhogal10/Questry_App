import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ques/Glassmorphism/Constant/Colors.dart';
import 'package:ques/Glassmorphism/Widgets/CustomButton.dart';
import 'package:ques/Glassmorphism/Widgets/CustomTextField.dart';
import 'package:ques/Glassmorphism/Widgets/GlassMorphismContainer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                tealBack,
                purpleBack,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlassMorphismContainer(
                    height: Get.height * 0.65,
                    width: Get.width * 0.0,
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CustomTextField(
                          hintText: "Email",
                          prefixIcon: Icons.email,
                        ),
                        CustomTextField(
                          hintText: "Password",
                          prefixIcon: Icons.email,
                          isObscure: true,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CustomButton(
                          buttonName: "Sign In",
                          onPress: () {},
                          paddingH: 25.0,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: GlassMorphismContainer(
                      height: 50.0,
                      width: Get.width * 0.8,
                      borderRadius: 10.0,
                      child: Center(
                        child: Text(
                          "Don't have an account? Sign Up.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
