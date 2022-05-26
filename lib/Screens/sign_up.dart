import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:post_request/Screens/api.dart';

import '../widgets/text_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  _register() {
    var data = {
      'name': nameController.text,
      'email': emailController.text,
      'passsord': passController.text,
    };

    var res = CallApi().postData(data, 'register');
  }

  final height = 30;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            padding: const EdgeInsets.only(left: 30),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF363f93),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: const Color(0xfffffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 0.05),
            TextWidget(
              text: "Here to Get",
              fontSize: 26,
              isUnderline: false,
            ),
            TextWidget(
              text: "Welcome!",
              fontSize: 26,
              isUnderline: false,
            ),
            const SizedBox(
              height: 25,
            ),
            TextInput(
                textString: "Name",
                textController: nameController,
                obscureText: false),
            const SizedBox(
              height: 25,
            ),
            TextInput(
                textString: "Email",
                textController: emailController,
                obscureText: false),
            const SizedBox(
              height: 25,
            ),
            TextInput(
                textString: "Password",
                textController: passController,
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            TextInput(
                textString: "Password",
                textController: repassController,
                obscureText: true),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "SignUp",
                  fontSize: 22,
                  isUnderline: false,
                ),
                GestureDetector(
                  onTap: () {
                    _register();
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0XFF363f93)),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                  child: TextWidget(
                    text: "Sign in",
                    fontSize: 16,
                    isUnderline: true,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: TextWidget(
                    text: "Forgot Password",
                    fontSize: 16,
                    isUnderline: true,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextInput extends StatelessWidget {
  final String textString;
  TextEditingController textController;
  final bool obscureText;
  TextInput(
      {Key? key,
      required this.textString,
      required this.textController,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFF000000)),
      cursorColor: const Color(0XFF9b9b9b),
      controller: textController,
      keyboardType: TextInputType.text,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: textString,
          hintStyle: const TextStyle(
              color: Color(0XFF9b9b9b),
              fontSize: 19,
              fontWeight: FontWeight.normal)),
    );
  }
}
