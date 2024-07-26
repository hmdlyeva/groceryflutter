import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80.0, bottom: 40.0, top: 160.0),
          child: Image.asset("lib/images/avocado.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text("We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                  fontSize: 36, fontWeight: FontWeight.bold)
                  ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          "Fresh items everyday",
          style: TextStyle(color: Colors.grey[600]),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const HomePage();
          })),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const Spacer()
      ],
    ));
  }
}
