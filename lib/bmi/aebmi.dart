import 'package:aebmi/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:aebmi/bmi/aeclc.dart';

final fkey = GlobalKey<FormState>();

class AEBmi extends StatefulWidget {
  const AEBmi({super.key});

  @override
  State<AEBmi> createState() => _AEBmiState();
}

class _AEBmiState extends State<AEBmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrbg,
      appBar: AppBar(
        backgroundColor: clrbg,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "BMI CALC",
          style: TextStyle(
            color: clrwt,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Form(
        key: fkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Heeey...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.07),
                child: Container(
                  decoration: deco,
                  child: tff(
                    txt: 'Name',
                    ic: const Icon(Icons.person_2_outlined),
                    vld: (ae) {
                      if (ae!.isEmpty) {
                        return "Do not leave it Empty!";
                      }
                      return null;
                    },
                    ctrl: nm,
                    type: TextInputType.name,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.07),
                child: btn(
                  clr: Colors.purpleAccent,
                  fun: () {
                    if (fkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AEClc(),
                        ),
                      );
                    }
                  },
                  txt: 'Calc',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
