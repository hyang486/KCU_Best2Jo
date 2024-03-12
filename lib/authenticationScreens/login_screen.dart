import 'package:course2ignal/authenticationScreens/regist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController pwTextEditingController = TextEditingController();
  bool showProgressBar = false;
//  var controllerAuth = AuthenticationController.authController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(
                height: 120,
              ),

              Image.asset(
                "images/logo.png",
                width: 150,
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              const Text(
                "Login and find your classmates. ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              //email
              SizedBox(
                width: MediaQuery.of(context).size.width - 40, //screen size
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "wisc.edu email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              //password
              SizedBox(
                width: MediaQuery.of(context).size.width - 40, //screen size
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: pwTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //login button
              Container(
                width: MediaQuery.of(context).size.width - 40, //screen size
                height: 55,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    )
                ),

                child: InkWell(
                  onTap: () async {
                    if(emailTextEditingController.text.trim().isNotEmpty
                        &&pwTextEditingController.text.trim().isNotEmpty) {
                      setState(() {
                        showProgressBar = true;
                      });

                      // await controllerAuth.loginUser(
                      //     emailTextEditingController.text.trim(),
                      //     pwTextEditingController.text.trim()
                      // );

                      setState(() {
                        showProgressBar = false;
                      });
                    }
                    else {
                      Get.snackbar("Email/Password is Missing", "Please enter all the fields.");
                    }

                  },

                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),


              const SizedBox(
                height: 15,
              ),

              // don't have an account sign up here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Get.to(RegistrationScreen());
                    },
                    child: const Text(
                      "Sign up here",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              showProgressBar == true
                  ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
              )
                  : Container(),

              const SizedBox(
                height: 30,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
