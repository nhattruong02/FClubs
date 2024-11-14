import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInUsingPasswordPage extends StatelessWidget {
  const SignInUsingPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 500.r,
          color: Colors.blue,
          child: Stack(
            children: [_buildButtonBack(), buildTextAndTitleWelcome()],
          ),
        ),
      ),
    );
  }
}

Widget _buildButtonBack() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.arrow_back),
    color: Colors.white,
  );
}

Widget buildTextAndTitleWelcome() {
  return Container(
    margin: EdgeInsets.only(top: 77),
    child: Column(
      children: [
        Text("Welcome"),
        Text("Let’s Get You Started With [App Name]")
      ],
    ),
  );
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
