import 'package:flutter/material.dart';
import 'package:aebmi/bmi/aeclc.dart';

class AERslt extends StatelessWidget {
  const AERslt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrbg,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 39,
            )),
        backgroundColor: clrbg,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "BMI Result",
          style: TextStyle(
            color: clrwt,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: deco,
              child: Padding(
                padding: const EdgeInsets.all(18.6),
                child: Column(
                  children: [
                    const Text(
                      "The BMI Result",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: clrtx,
                        fontSize: 39,
                      ),
                    ),
                    const Divider(
                      thickness: 6,
                      color: Colors.black,
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Name: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrtx,
                            fontSize: 39,
                          ),
                        ),
                        Text(
                          nm.text,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrwt,
                            fontSize: 39,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Gender: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrtx,
                            fontSize: 39,
                          ),
                        ),
                        Text(
                          isMan ? 'Male' : 'Female',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrwt,
                            fontSize: 39,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrtx,
                            fontSize: 39,
                          ),
                        ),
                        Text(
                          "$ht",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrwt,
                            fontSize: 39,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrtx,
                            fontSize: 39,
                          ),
                        ),
                        Text(
                          "$wt",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrwt,
                            fontSize: 39,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrtx,
                            fontSize: 39,
                          ),
                        ),
                        Text(
                          "$ag",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrwt,
                            fontSize: 39,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Result: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: clrtx,
                            fontSize: 39,
                          ),
                        ),
                        Text(
                          "${rslt.round()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.cyanAccent,
                            fontSize: 39,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text("AEKh ^^"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
