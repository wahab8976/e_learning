import 'package:e_learning/features/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});


  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name_controller = new TextEditingController();
  TextEditingController phone_controller = new TextEditingController();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController pass_controller = new TextEditingController();
  TextEditingController pass_confirm_controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Text("E Learning",
              style: TextStyle(
                fontSize: 30,
                  color: Color(0xFFC62828),
                fontWeight: FontWeight(500)
              ),
              ),
          TextField(
                controller: name_controller,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  prefixIcon: const Icon(Icons.email_outlined),
                )),
            TextField(
                controller: name_controller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  prefixIcon: const Icon(Icons.email_outlined),
                )),
            TextField(
                controller: name_controller,
                decoration: InputDecoration(
                  hintText: "Phone",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  prefixIcon: const Icon(Icons.email_outlined),
                )),
            TextField(
                controller: name_controller,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  prefixIcon: const Icon(Icons.email_outlined),
                )),
            TextField(
                controller: name_controller,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  prefixIcon: const Icon(Icons.email_outlined),
                )),

            SizedBox(
              height: 10,
            ),

            SizedBox(
              width: double.infinity, // Takes all available horizontal space
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  // Sign Up logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC62828),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  // Left Line
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "or",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),

                  // Right Line
                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {
                  // Logic for Google Sign-In goes here
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFC62828)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google Logo
                    Image.asset(
                      'assets/images/google_logo.png',
                      height: 24,
                    ),
                    const SizedBox(width: 12),

                    // Button Text
                    const Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          InkWell(
            child: Text("Already have an account? Sign In",
            style: TextStyle(color: Colors.grey.shade500),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignIn()));
            },
          )
          ],
        ),
      ),
    );
  }
}
