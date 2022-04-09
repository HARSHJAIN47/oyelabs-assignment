import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:oyelabs_assignment/screens/otherloginscreen.dart';
import 'package:oyelabs_assignment/screens/otpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/home2.jpg",
              ),
              const Text(
                "Your Home Services Expert",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Coninue With Phone Number",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 65,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xffeeeeee),
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ]),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        onInputChanged: (value) {},
                        cursorColor: Colors.black,
                        inputDecoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(bottom: 15, left: 0),
                            hintText: "Enter Mobile Number",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                      Positioned(
                        left: 90,
                        top: 8,
                        bottom: 8,
                        child: Container(
                          height: 40,
                          width: 1,
                          color: Colors.black.withOpacity(0.13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpPage()));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtherLoginScreen()));
                },
                child: const Text(
                  "VIEW OTHER OPTION",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ALREADY HAVE AN ACCOUNT?",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
