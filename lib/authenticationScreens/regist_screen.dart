import 'dart:io';
import 'package:course2ignal/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  //personal info
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController pwTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneNoTextEditingController = TextEditingController();
  TextEditingController ktalkTextEditingController = TextEditingController();
  TextEditingController currYearTextEditingController = TextEditingController();
  TextEditingController majorTextEditingController = TextEditingController();
  TextEditingController certificateTextEditingController = TextEditingController();
  TextEditingController profileHeadingTextEditingController = TextEditingController();
  TextEditingController lookingForTextEditingController = TextEditingController();

  //course info
  TextEditingController currEnrollmentTextEditingController = TextEditingController();
  TextEditingController pastEnrollmentTextEditingController = TextEditingController();

  // socializing
  TextEditingController studyTogetherTextEditingController = TextEditingController();
  TextEditingController eatTogetherTextEditingController = TextEditingController();
  TextEditingController officehourTogetherTextEditingController = TextEditingController();

  bool showProgressBar = false;
//  var authenticationController = AuthenticationController.authController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [

              const SizedBox(
              height: 50,
              ),

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

                //choose image circle avatar
                GestureDetector(
                  onTap: ()
                  {

                  },
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                        "images/profile.jpg"
                    ),
                    backgroundColor: Colors.black54,
                  ),
                ),


                const SizedBox(
                  height: 40,
                ),

                /** personal info **/
                const Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                //name
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: nameTextEditingController,
                    labelText: "Name",
                    iconData: Icons.person_outline,
                    isObscure: false,
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
                  height: 24,
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
                  height: 24,
                ),

                //phone number
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: phoneNoTextEditingController,
                    labelText: "Phone number",
                    iconData: Icons.phone,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                // kakaotalk id
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: phoneNoTextEditingController,
                    labelText: "Kakao Talk ID",
                    iconData: Icons.chat_rounded,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                //current year
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: currYearTextEditingController,
                    labelText: "Current Year",
                    iconData: Icons.insert_chart,
                    isObscure: true,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                //major
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: majorTextEditingController,
                    labelText: "Major",
                    iconData: Icons.school,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                //certificate
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: certificateTextEditingController,
                    labelText: "Certificate",
                    iconData: Icons.badge,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                //profileHeading
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: profileHeadingTextEditingController,
                    labelText: "Profile Heading",
                    iconData: Icons.text_fields,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),


                //Course Info
                const Text(
                  "Course Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //courses taking this semester
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: currEnrollmentTextEditingController,
                    labelText: "Courses taking this semester",
                    iconData: Icons.light_outlined,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                //courses taken last semester
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: pastEnrollmentTextEditingController,
                    labelText: "Courses taken last semester",
                    iconData: Icons.list_outlined,
                    isObscure: false,
                  ),
                ),

                const SizedBox(
                  height: 24,
                ),

                //looking for
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40, //screen size
                  height: 55,
                  child: CustomTextFieldWidget(
                    editingController: lookingForTextEditingController,
                    labelText: "Other things you are looking for",
                    iconData: Icons.face,
                    isObscure: true,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                // already have an account login here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: const Text(
                        "Login here",
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



              ]
          ),
        ),
      ),
    );
  }
}
