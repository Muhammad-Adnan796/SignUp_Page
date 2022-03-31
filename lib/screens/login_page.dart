import 'package:flutter/material.dart';
import 'package:login_form/screens/Widgets/custom_button.dart';
import 'package:login_form/screens/Widgets/home_page.dart';
import 'package:login_form/screens/Widgets/login_widgets.dart';

class LoginPAge extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  GlobalKey<FormState> _FormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _FormKey,
          child: Column(
            children: [
              Textfield(
                labelText: "Email",
                controller: _emailController,
                prifixIcon: const Icon(Icons.person),
              ),
              const SizedBox(
                height: 20,
              ),
              Textfield(
                labelText: "Password",
                controller: _passwordcontroller,
                prifixIcon: const Icon(Icons.lock),
              ),
              CustomButton(title: "Login", onPress: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
                _FormKey.currentState?.validate();
              })
            ],
          ),
        ),
      ),
    );
  }
}
