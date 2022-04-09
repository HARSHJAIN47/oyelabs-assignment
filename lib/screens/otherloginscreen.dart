import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class OtherLoginScreen extends StatefulWidget {
  const OtherLoginScreen({Key? key}) : super(key: key);

  @override
  State<OtherLoginScreen> createState() => _OtherLoginScreenState();
}

class _OtherLoginScreenState extends State<OtherLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 60,
                width: 320,
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(24, 119, 242, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "CONTINUE WITH FACEBOOK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 320,
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/google_icon.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "CONTINUE WITH GOOGLE",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                "OR CONTINUE WITH PHONE NUMBER",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
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
                width: 320,
                child: ElevatedButton(
                  onPressed: () {},
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
                      "LOG IN",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DON'T HAVE AN ACCOUNT?",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "SIGN UP",
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
