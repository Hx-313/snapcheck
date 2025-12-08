import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snapcheck/Auth/ui/pages/sign_up_page.dart';
import 'package:snapcheck/Auth/ui/widgets/my_button.dart';
import 'package:snapcheck/Auth/ui/widgets/my_text_field.dart';
import 'package:snapcheck/common/paddings/paddings.dart';
import 'package:snapcheck/home/ui/home_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LinearGradient _gradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 5, 70, 148),
      Color(0xFF7433CC),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Image.asset('assets/images/finalLogo.png'),
            ),
            SizedBox(
              height: Paddings.reponsiveHeight(context, 27.0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Paddings.reponsiveHeight(context, 10.0),
                  horizontal: 20.0),
              child: Card(
                elevation: 5,
                shadowColor: Colors.grey,
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return _gradient.createShader(
                            Rect.fromLTRB(0, 0, bounds.width, bounds.height),
                          );
                        },
                        child: Text(
                          "Get Started Now",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          'Create an account or log in to explore our app',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: Paddings.reponsiveHeight(context, 46.0)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: MyTextField(
                          hintText: 'Enter your Email',
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          label: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: Paddings.reponsiveHeight(context, 16.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: MyTextField(
                          hintText: 'Enter your Password',
                          keyboardType: TextInputType.emailAddress,
                          controller: _passwordController,
                          label: 'Password',
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              activeColor: Color(0xFF0A0338),
                              value: isCheked,
                              side: BorderSide(
                                color: Color(0xFF0A0338),
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheked = value!;
                                });
                              },
                            ),
                            FittedBox(
                              child: Text(
                                'Remember Me',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0A0338),
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: FittedBox(
                                child: Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4D81E7),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Paddings.reponsiveHeight(context, 46.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: MyButton(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          text: 'Sign In',
                        ),
                      ),
                      SizedBox(
                        height: Paddings.reponsiveHeight(context, 46.0),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Dont Have an Account?",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: " Sign Up",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  );
                                },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
