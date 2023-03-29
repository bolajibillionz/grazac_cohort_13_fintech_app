import 'package:ch13_fintech_app/core/size_config.dart';
import 'package:ch13_fintech_app/presentation/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/widgets/basic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        key: _key,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 91,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                    fontFamily: 'Gilroy-Bold',
                    fontSize: 44,
                    color: Color(0xff151940),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              height: 46,
            ),
            Row(
              children: [
                Container(
                  color: Color(0xffF5F6FA),
                  width: 161,
                  height: 53,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'GOOGLE',
                      style: TextStyle(
                        color: Color(0xff151940),
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Color(0xffF5F6FA),
                  width: 161,
                  height: 53,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'FACEBOOK',
                      style: TextStyle(
                        color: Color(0xff151940),
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'or',
              style: TextStyle(
                fontFamily: 'SF-Pro-Rounded-Medium.otf',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              controller: _emailController,
              validator: (value) => Validator.validateEmail(value ?? ''),
              key: const ValueKey('email_add'),
              decoration: InputDecoration(
                hintText: 'Enter Email Address',
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7F8192),
                ),
              ),
            ),
            TextFormField(
              controller: _passwordController,
              validator: (value) => Validator.validatePassword(value ?? ''),
              key: const ValueKey('password'),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7F8192),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color(0xff5771F9),
                      fontFamily: 'Inter',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _key.currentState!.validate();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Rounded-Bold.otf',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 146,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('REGISTER'),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xff314BCE),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
