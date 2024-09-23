import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/complete_profile_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Text("Complete Profile",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    "Complete your details or continue  \nwith social media",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(),
                  ),
                  const SizedBox(height: 16),
                  const CompleteProfileForm(),
                  const SizedBox(height: 30),
                  Text(
                    "By continuing your confirm that you agree \nwith our Terms and Conditions",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
