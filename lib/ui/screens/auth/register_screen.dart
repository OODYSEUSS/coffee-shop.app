import 'package:flutter/material.dart';
import 'package:z73_1/core/auth/registration.dart';
import 'package:z73_1/ui/pages/auth/login.dart';

class Register extends StatelessWidget {
  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //верхняя шапка
          Stack(
            children: [
              Image.asset(
                'assets/images/top_cap2.PNG',
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
          // написать текст 'Register'
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
          // texfield email
          MyTextField(
              controller: emailControllerReg,
              hintText: 'Email',
              obscureText: false),
          const SizedBox(
            height: 15,
          ),
          // textfield password
          MyTextField(
              controller: passwordControllerReg,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(
            height: 15,
          ),
          // textfield confirm password
          MyTextField(
              controller: confirmPasswordControllerReg,
              hintText: 'Confirm password',
              obscureText: true),
          const SizedBox(
            height: 20,
          ),
          // elevatedbutton Sign Up
          MyButton(
            onPressed: () {
              signUserUp(context);
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
          // кнопки для регистрации с помощью гугла и эпла
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyImageButton(
                  imagePath:
                      '/Library/flutter_projects/z73_1/assets/images/google.png',
                  onTap: () {}),
              const SizedBox(
                width: 20,
              ),
              MyImageButton(
                  imagePath:
                      '/Library/flutter_projects/z73_1/assets/images/apple.png',
                  onTap: () {}),
            ],
          ),
          const Spacer(), // добавил пространство для выравнивания последней картинки
          Align(
            // а этой хуйней выровнял картинку по нижнему левому краю
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/bottom_cap.PNG',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
