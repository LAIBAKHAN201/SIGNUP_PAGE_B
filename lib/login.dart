import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Good to see you!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text("Let’s continue the journey."),
              const SizedBox(height: 30),

  // Username label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Username",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 5),
              // Username text field
              TextField(
                decoration: InputDecoration(
                  labelText: "Test@12",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 15),

 // Password label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  " Password",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 5),
              // Password
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "*********",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 20),

             // OR + Social Media Icons from assets
              const Text("or"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/facebook.jpg", height: 35),
                  const SizedBox(width: 20),
                  Image.asset("assets/google.jpg", height: 35),
                  const SizedBox(width: 20),
                  Image.asset("assets/twitter.jpg", height: 35),
                ],
              ),

              const SizedBox(height: 20),
              // Log In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: const Text("Log In"),
                ),
              ),
              const SizedBox(height: 10),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup_terms');
                },
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
