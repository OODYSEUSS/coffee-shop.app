import 'package:coffee_shop_app/ui/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

final emailControllerReg = TextEditingController();
final passwordControllerReg = TextEditingController();
final confirmPasswordControllerReg = TextEditingController();

void signUserUp() {}

class Register extends StatelessWidget {
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/top_cap2.png',
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                top: 30,
                left: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 35,
                    color: Color.fromRGBO(249, 249, 249, 1.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Register',
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextField(
              controller: emailControllerReg,
              hintText: 'Email',
              obscureText: false),
          const SizedBox(
            height: 15,
          ),
          MyTextField(
              controller: passwordControllerReg,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(
            height: 15,
          ),
          MyTextField(
              controller: confirmPasswordControllerReg,
              hintText: 'Confirm password',
              obscureText: true),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            onPressed: () {
              signUserUp();
            },
            text: 'Sign Up',
          ),
          const SizedBox(
            height: 39,
          ),
          Text(
            'Or sign up with',
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 20,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 39,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyImageButton(
                  imagePath: 'assets/images/google.png', onTap: () {}),
              const SizedBox(
                width: 20,
              ),
              MyImageButton(imagePath: 'assets/images/apple.png', onTap: () {}),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/bottom_cap.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
