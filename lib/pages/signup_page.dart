import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_helper/components/main_button.dart';
import 'package:student_helper/helpers/font_size.dart';
import 'package:student_helper/helpers/theme_colors.dart';
import 'package:student_helper/pages/login_page.dart';
import 'package:get/get.dart';



class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.scaffoldBgColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New here? Welcome!",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.whiteTextColor,
                    fontSize: FontSize.xxLarge,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "Please fill the form to continue.",
                    style: GoogleFonts.poppins(
                      color: ThemeColors.greyTextColor,
                      fontSize: FontSize.medium,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //Name input field
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (_nameController.text.isEmpty) {
                            return "This field can't be empty.";
                          }
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: 'Full name',
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      //Email input field
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (_emailController.text.isEmpty) {
                            return "This field can't be empty.";
                          }
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: 'E-mail',
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      //Phone input field
                      TextFormField(
                        controller: _phoneController,
                        validator: (value) {
                          if (_phoneController.text.isEmpty) {
                            return "This field can't be empty.";
                          }
                        },
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: 'Mobile no.',
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      //Password input field
                      TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (_passwordController.text.isEmpty) {
                            return "This field can't be empty.";
                          }
                        },
                        obscureText: true,
                        style: GoogleFonts.poppins(
                          color: ThemeColors.whiteTextColor,
                        ),
                        cursorColor: ThemeColors.primaryColor,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          fillColor: ThemeColors.textFieldBgColor,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                            color: ThemeColors.textFieldHintColor,
                            fontSize: FontSize.medium,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 70,
                      ),

                      MainButton(
                        text: 'Sign-Up',
                      onTap: () {
                          // if (_formKey.currentState!.validate()) {
                          //   SignUpController.instance.registerUser(
                          //       controller.email.text.trim(),
                          //       controller.password.text.trim());
                          // }
                        },

                      ), //{ //_formKey.currentState!.validate();}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
