import 'package:flutter/material.dart';

class SemptomDisplayer extends StatefulWidget {
  SemptomDisplayer(String? text_, {super.key}) {
    text = text_;
  }

  String? text;

  @override
  State<SemptomDisplayer> createState() => _SemptomDisplayerState();
}

class _SemptomDisplayerState extends State<SemptomDisplayer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
              "Merhaba, karşınızdaki kişi işitme engelli ve ${widget.text} semptomu var."),
        ),
      ),
    );
  }
}
