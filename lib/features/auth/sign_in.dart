import 'package:e_learning/features/auth/sign_up.dart';
import 'package:e_learning/home/home_page.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //Controllers for Sign In
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header Image/Logo
              SizedBox(
                height: 50,
              ),
              const Text(
                "E-Learning",
                style: TextStyle(
                  fontSize: 45,
                  color: Color(0xFFC62828),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 50),

              // Email Field
              TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  )),
              const SizedBox(height: 15),

              // Password Field with Toggle icon
              TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                  )),

              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // Authentication Logic is Pending
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC62828),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 0,
                  ),
                  child: const Text("Sign in",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),

              // 6. The "or" Divider
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    const Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("or", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ),
                    const Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  ],
                ),
              ),

              // 7. Google Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFFC62828)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google_logo.png', height: 24),
                      const SizedBox(width: 12),
                      const Text("Continue with Google",
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              InkWell(
                child: Text("Don't have an account? Sign Up",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}