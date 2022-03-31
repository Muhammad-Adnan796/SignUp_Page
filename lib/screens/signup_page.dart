import 'package:flutter/material.dart';
import 'package:login_form/screens/Widgets/custom_button.dart';
import 'package:login_form/screens/Widgets/login_widgets.dart';
import 'package:login_form/screens/login_page.dart';

class SignUpPage extends StatefulWidget {
  // const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  GlobalKey<FormState> _FormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp Page"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _FormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textfield(
                  labelText: "First Name",
                  controller: firstnameController,
                  prifixIcon: const Icon(Icons.person),
                ),
                Textfield(
                  labelText: "Last Name",
                  controller: lastnameController,
                  prifixIcon:const Icon(Icons.person),
                ),
                Textfield(
                  labelText: "Email",
                  controller: emailController,
                  prifixIcon: const Icon(Icons.email),
                ),
                Textfield(
                  obscureText: true,
                  labelText: "Password",
                  controller: passwordController,
                  prifixIcon: const Icon(Icons.lock),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                    title: "Submit",
                    onPress: () {
                      _FormKey.currentState?.validate();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPAge(),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
