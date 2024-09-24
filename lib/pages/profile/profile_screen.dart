import 'package:bayo/components/svg_pack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 212, 212, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(245, 212, 212, 186),
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: user_icon,
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: bell,
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: settings,
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: question_mark,
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: logout,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
