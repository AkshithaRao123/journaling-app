import 'package:demo/views/widget_tree.dart';
import 'package:demo/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

TextEditingController controller = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String confirmedEmail = '123@example.com';
  String confirmedPass = '456';
  String? errorMessage;

  @override
  void initState() {
    // TODO: implement initState
    print("init state");
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeroWidget(title: "Login"),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: "Email",
                  ),
                  controller: controllerEmail,
                  onEditingComplete: () {
                    setState(() {});
                  },
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: "Password",
                  ),
                  controller: controllerPassword,
                  onEditingComplete: () {
                    setState(() {});
                  },
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                SizedBox(height: 20.0),

                if (errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      errorMessage!,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),

                ElevatedButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  child: Text("Get Started"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPass == controllerPassword.text) {
      setState(() {
        errorMessage = null;
      });
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    } else {
      setState(() {
        errorMessage = "Invalid email or password.";
      });
    }
  }
}
