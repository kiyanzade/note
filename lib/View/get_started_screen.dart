import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              "NOTELY",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.titanOne().fontFamily),
            ),
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              "assets/images/getStartedIcon.png",
              width: 250,
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "World’s Safest And Largest Digital Notebook",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Color(0xff403B36)),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Notely is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.",
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 96, 24, 8),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "GET STARTED",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        letterSpacing: 4,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Get.toNamed("/loginScreen");
                },
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
