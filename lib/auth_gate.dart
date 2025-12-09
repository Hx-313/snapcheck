import 'package:flutter/material.dart';
import 'package:snapcheck/features/Auth/ui/pages/sign_in_page.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  void initState() {
    super.initState();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
