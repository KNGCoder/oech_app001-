import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_widget.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/sign_up-page';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              width: 362,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Отступ
                  const SizedBox(height: 40),
                  //Заголовок
                  const Text('Create an account',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(58, 58, 58, 1),
                        fontWeight: FontWeight.w500,
                      )),
                  //Отступ
                  const SizedBox(height: 5),
                  //Подзаголовок
                  const Text('Complete the sign up process to get started',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(167, 167, 167, 1))),
                  //Отступ
                  const SizedBox(height: 18),
                  //Текстовое поле 1
                  const S2TextFieldWidget(
                    textTitle: 'Full name',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: 'ivanov ivan',
                  ),
                  const SizedBox(height: 10),
                  //Текстовое поле 2
                  const S2TextFieldWidget(
                    textTitle: 'Phone Number',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '+7(999)999-99-99',
                  ),
                  //Текстовое поле 3
                  const S2TextFieldWidget(
                    textTitle: 'Email Address',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '***********@mail.com',
                  ),
                  //Текстовое поле 4
                  const S2TextFieldWidget(
                    textTitle: 'Password',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '**********',
                  ),
                  //Текстовое поле 5
                  const S2TextFieldWidget(
                    textTitle: 'Confirm Password',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '**********',
                  ),

                  //Кнопка соглашения
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          child: Checkbox(
                              activeColor:
                                  const Color.fromARGB(255, 5, 96, 250),
                              value: checkedValue,
                              onChanged: (newValue) {
                                setState(() {
                                  checkedValue = newValue!;
                                });
                              }),
                        ),

                        //Пользовательское соглашение:

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: RichText(
                            text: const TextSpan(
                              text: 'By ticking this box, you agree to our ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(167, 167, 167, 1)),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'Terms\n and conditions and private policy',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(235, 188, 46, 1))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  Column(
                    children: [
                      SizedBox(
                        width: 362,
                        child: ButtonWidget(
                          buttonName: 'Sign Up',
                          buttonColor: const Color.fromRGBO(167, 167, 167, 1),
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Already have an account?',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(167, 167, 167, 1)),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Sign in',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 96, 250, 1)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, '/signin');
                                  },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text('or sign in using',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(167, 167, 167, 1))),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Image(
                            image:
                                AssetImage('assets/images/s2_icon_google.png'),
                            height: 16,
                            width: 16),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
