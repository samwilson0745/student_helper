import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_helper/components/main_button.dart';
import 'package:student_helper/helpers/font_size.dart';
import 'package:student_helper/helpers/theme_colors.dart';

class HostelPage extends StatefulWidget {
  const HostelPage({super.key});

  @override
  State<HostelPage> createState() => _HostelPageState();
}

class _HostelPageState extends State<HostelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hostel",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.whiteTextColor,
                    fontSize: FontSize.xxLarge,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                MainButton(
                  text: 'Hostel Details',
                  onTap: () {}, //{_formKey.currentState!.validate();}
                ),
                SizedBox(
                  height: 16,
                ),
                MainButton(
                    text: 'Book Hostel',
                    onTap: () {} //{_formKey.currentState!.validate();}
                    ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
