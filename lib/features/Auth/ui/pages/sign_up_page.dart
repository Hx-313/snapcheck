import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snapcheck/common/paddings/paddings.dart';
import 'package:snapcheck/features/Auth/ui/widgets/my_button.dart';
import 'package:snapcheck/features/Auth/ui/widgets/my_text_field.dart';
import 'package:snapcheck/features/Auth/ui/widgets/subscription_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Image.asset('assets/images/finalLogo.png'),
            ),
            SizedBox(height: 27.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Card(
                elevation: 5,
                shadowColor: Colors.grey,
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 16.0),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Center(
                          child: ShaderMask(
                            shaderCallback: (bounds) {
                              return _gradient.createShader(
                                Rect.fromLTRB(
                                    0, 0, bounds.width, bounds.height),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Paddings.reponsiveHeight(context, 20),
                        ),
                        Center(
                          child: FittedBox(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Already Have an Account?",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Sign In",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pop(context);
                                      },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 46.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: MyTextField(
                                hintText: 'First Name',
                                keyboardType: TextInputType.name,
                                controller: _fNameController,
                                label: 'First Name',
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: MyTextField(
                                hintText: 'Last Name',
                                keyboardType: TextInputType.name,
                                controller: _lNameController,
                                label: 'Last Name',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
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
                          height: 16.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: MyTextField(
                            hintText: 'Enter your Password',
                            keyboardType: TextInputType.emailAddress,
                            controller: _passwordController,
                            label: 'set Password',
                          ),
                        ),
                        SizedBox(
                          height: Paddings.reponsiveHeight(context, 45),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: MyButton(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            text: 'Sign Up',
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: SubscriptionButton(
                            text: 'Subscription',
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
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
