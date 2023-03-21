import 'package:bangkok_fast_call_app/views/fast_call_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastCallSplashUI extends StatefulWidget {
  const FastCallSplashUI({super.key});

  @override
  State<FastCallSplashUI> createState() => _FastCallSplashUIState();
}

class _FastCallSplashUIState extends State<FastCallSplashUI> {
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), 
        () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FastCallHomeUI(),
        ),
      );
    }
    );

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/police.png',
                  ),
                ),
                border: Border.all(
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สายด่วน กทม.',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.055,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'มีเหตุด่วนเหตุร้ายแจ้ง \nสายด่วน กทม.',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
