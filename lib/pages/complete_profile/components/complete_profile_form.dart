// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../otp/otp_screen.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
              onSaved: (newValue) => firstName = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kNamelNullError);
                }
                return;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kNamelNullError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "First Name",
                hintText: "Enter your first name",
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
                suffixIcon:
                    const CustomSurffixIcon(svgIcon: "assets/icons/user.svg"),
              )),
          const SizedBox(height: 20),
          TextFormField(
              style: GoogleFonts.poppins(),
              onSaved: (newValue) => lastName = newValue,
              decoration: InputDecoration(
                labelText: "Last Name",
                hintText: "Enter your last name",
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
                suffixIcon:
                    const CustomSurffixIcon(svgIcon: "assets/icons/user.svg"),
              )),
          const SizedBox(height: 20),
          TextFormField(
              style: GoogleFonts.poppins(),
              keyboardType: TextInputType.phone,
              onSaved: (newValue) => phoneNumber = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kPhoneNumberNullError);
                }
                return;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kPhoneNumberNullError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter your phone number",
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
                suffixIcon:
                    const CustomSurffixIcon(svgIcon: "assets/icons/phone.svg"),
              )),
          const SizedBox(height: 20),
          TextFormField(
              style: GoogleFonts.poppins(),
              onSaved: (newValue) => address = newValue,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kAddressNullError);
                }
                return;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: kAddressNullError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Adress",
                hintText: "Enter your physical address",
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
                suffixIcon: const CustomSurffixIcon(
                    svgIcon: "assets/icons/Location point.svg"),
              )),
          FormError(errors: errors),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(const Color(0xFFFF7643)),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => OtpScreen()));
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
