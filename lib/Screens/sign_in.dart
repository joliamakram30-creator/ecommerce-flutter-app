import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool rememberMe = false;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(
                      child: Lottie.asset(
                        'assets/animations/Alphabet A.json',
                        width: 200,
                        height: 200,
                        repeat: true,
                      ),
                    ),
                    const Text(
                      "جوليااا",
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Select Country",
                            style: TextStyle(
                              color: Color.fromARGB(255, 80, 71, 176),
                            ),
                          ),
                        ),

                        const Icon(Icons.language, size: 30),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                const Text(
                  "Welcome back",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 25),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                TextField(
                  obscureText: obscurePassword,

                  decoration: InputDecoration(
                    hintText: "Password",

                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),

                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),

                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),

                    const Text("Remember me"),

                    const Spacer(),

                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color(0xff5B54A4)),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),

                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },

                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                const Divider(),

                const SizedBox(height: 20),

                const Text(
                  "New to Verve",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },

                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 180),
                const SizedBox(height: 180),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Terms of use",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),

                      SizedBox(width: 5),

                      Text(
                        "&",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),

                      SizedBox(width: 5),

                      Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
