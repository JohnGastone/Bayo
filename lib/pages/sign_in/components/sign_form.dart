// ignore_for_file: library_private_types_in_public_api
import 'package:bayo/pages/login_success/login_success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../helper/keyboard.dart';
import '../../forgot_password/forgot_password_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
              style: GoogleFonts.poppins(),
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kEmailNullError);
                } else if (emailValidatorRegExp.hasMatch(value)) {
                  removeError(error: kInvalidEmailError);
                }
                return;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kEmailNullError);
                  return "";
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  addError(error: kInvalidEmailError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                hintStyle: GoogleFonts.poppins(),
                labelStyle: GoogleFonts.poppins(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: const BorderSide(color: Colors.grey),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: const BorderSide(color: kPrimaryColor),
                  gapPadding: 10,
                ),
                // suffixIcon: SvgPicture.string(
                //   mail,
                //   height: 10,
                //   width: 10,
                // ),
              )),
          const SizedBox(height: 20),
          TextFormField(
              obscureText: true,
              style: GoogleFonts.poppins(),
              onSaved: (newValue) => password = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kPassNullError);
                } else if (value.length >= 8) {
                  removeError(error: kShortPassError);
                }
                return;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kPassNullError);
                  return "";
                } else if (value.length < 8) {
                  addError(error: kShortPassError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                hintStyle: GoogleFonts.poppins(),
                labelStyle: GoogleFonts.poppins(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: const BorderSide(color: Colors.grey),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: const BorderSide(color: kPrimaryColor),
                  gapPadding: 10,
                ),
                // suffixIcon: SvgPicture.asset(
                //   lock,
                //   height: 3,
                //   width: 3,
                // ),
              )),
          const SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text(
                "Remember me",
                style: GoogleFonts.poppins(),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.poppins(),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          const SizedBox(height: 16),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(const Color(0xFFFF7643)),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  KeyboardUtil.hideKeyboard(context);
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const LoginSuccessScreen()));
                }
              },
              child: Text(
                "Continue",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
