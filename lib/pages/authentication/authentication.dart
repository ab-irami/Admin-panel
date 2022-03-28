import 'package:admin_panel_app/constants/style.dart';
import 'package:admin_panel_app/routing/routes.dart';
import 'package:admin_panel_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset(
                      'assets/icons/shop-cart.png',
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(width: 30),
              Row(
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomText(text: 'Welcome to Admin Panel', color: lightGrey),
                ],
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'xxyz@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Abc@123',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const CustomText(text: 'Remember Me'),
                    ],
                  ),
                  CustomText(
                    text: 'Forgot Password?',
                    color: active,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.offAllNamed(rootRoute);
                  // Get.offAll(() => SiteLayout());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const CustomText(
                    text: 'Login',
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'Do not have an admin credentials?'),
                    TextSpan(
                      text: 'Request admin credential?',
                      style: TextStyle(color: active),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
