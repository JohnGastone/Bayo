import 'package:bayo/pages/sign_up/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: GoogleFonts.poppins(fontSize: 16),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const SignUpScreen()),
          ),
          child: Text(
            "Sign Up",
            style: GoogleFonts.poppins(fontSize: 16, color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
