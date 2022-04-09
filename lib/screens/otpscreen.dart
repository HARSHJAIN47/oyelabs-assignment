import 'package:flutter/material.dart';
import 'package:oyelabs_assignment/screens/locationscreen.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String code = "";

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
              Image.asset(
                "assets/otpjpg.jpg",
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "OTP Verification",
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Enter the OTP sent to",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "+1 9879879875",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildCodeNumberBox('7'),
                  buildCodeNumberBox1('1'),
                  buildCodeNumberBox2('2'),
                  buildCodeNumberBox3('4'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "OTP not recieved?",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "RESEND OTP",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                  ),
                ],
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
                            builder: (context) => const LocationPage()));
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
                      "VERIFY & PROCEED",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.all(
            //   Radius.circular(15),
            // ),
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.black54,
              ),
            ),
          ),
          child: const Center(
            child: Text(
              "7",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox1(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.all(
            //   Radius.circular(15),
            // ),
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.black54,
              ),
            ),
          ),
          child: const Center(
            child: Text(
              "1",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox2(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.all(
            //   Radius.circular(15),
            // ),
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.black54,
              ),
            ),
          ),
          child: const Center(
            child: Text(
              "2",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCodeNumberBox3(String codeNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.all(
            //   Radius.circular(15),
            // ),
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.black54,
              ),
            ),
          ),
          child: const Center(
            child: Text(
              "4",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
