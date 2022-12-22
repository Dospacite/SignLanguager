import 'package:flutter/material.dart';
import 'package:sign_languager/SemptomDisplayer.dart';

class EyeSymptoms extends StatelessWidget {
  const EyeSymptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/eye_selection.png"),
          Positioned(
            top: 90,
            left: 90,
            child: SizedBox(
              height: 90,
              width: 90,
              child: MaterialButton(
                color: Colors.black12,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SemptomDisplayer("Göz Kaşıntısı"))),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
