import 'package:flutter/material.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscurePassword = true;
  bool checked = false;

  final TextEditingController dateController = TextEditingController();

  Future<void> selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2004),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      setState(() {});
    }
  }

  Widget textField({
    required String hint,
    Widget? suffix,
    bool obscure = false,
    TextEditingController? controller,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        readOnly: onTap != null,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          suffixIcon: suffix,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Verve",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),

                  Row(
                    children: const [
                      Text(
                        "Belgium",
                        style: TextStyle(
                          color: Color(0xff6762B5),
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(width: 8),

                      Icon(Icons.language, size: 30),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 45),

              const Text(
                "I’m new here",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              textField(hint: "First Name"),

              textField(hint: "Last Name"),

              textField(hint: "Email address"),

              textField(
                hint: "Placeholder",
                controller: dateController,
                onTap: selectDate,
                suffix: const Icon(Icons.calendar_today_outlined),
              ),

              textField(
                hint: "Password (6-12 characters)",
                obscure: obscurePassword,
                suffix: IconButton(
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

              const Divider(height: 40),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: checked,
                    onChanged: (v) {
                      setState(() {
                        checked = v!;
                      });
                    },
                  ),

                  const SizedBox(width: 8),

                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Yes, keep me informed via email about the latest trends and special offers. (not mandatory)",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE6E6EC),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                  child: const Text(
                    "Create a new account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 180),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    TextSpan(
                      text: "By registering for an account, you agree to our ",
                    ),

                    TextSpan(
                      text: "terms of use",
                      style: TextStyle(color: Color(0xff6762B5)),
                    ),

                    TextSpan(text: ". Please read our "),

                    TextSpan(
                      text: "privacy statement.",
                      style: TextStyle(color: Color(0xff6762B5)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
