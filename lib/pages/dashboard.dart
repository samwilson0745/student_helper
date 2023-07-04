import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_helper/components/main_button.dart';
import 'package:student_helper/helpers/font_size.dart';
import 'package:student_helper/helpers/theme_colors.dart';
import 'package:student_helper/pages/hostel_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
                  "Dashboard",
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
                  text: 'Hostel',
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HostelPage(),
                      )), //{_formKey.currentState!.validate();}
                ),
                SizedBox(
                  height: 16,
                ),
                MainButton(
                    text: 'Stationery',
                    onTap: () {} //{_formKey.currentState!.validate();}
                    ),
                SizedBox(
                  height: 16,
                ),
                MainButton(
                  text: 'Food',
                  onTap: () {}, //{_formKey.currentState!.validate();}
                ),
                SizedBox(
                  height: 16,
                ),
                MainButton(
                    text: 'Medical',
                    onTap: () {} //{_formKey.currentState!.validate();}
                    ),
                SizedBox(
                  height: 200,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MainButton(
                    text: 'Emergency',
                    onTap: () {},

                    backGroundColor: ThemeColors
                        .EmergencyColor, //{_formKey.currentState!.validate();}
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
