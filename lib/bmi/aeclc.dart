import 'package:flutter/material.dart';
import 'dart:math';
import 'package:aebmi/bmi/aerslt.dart';
import 'package:aebmi/shared/components/components.dart';

const clrwt = Colors.white;
const clrbg = Color.fromARGB(255, 0, 27, 49);
const clrdc = Color.fromARGB(99, 158, 158, 158);
const clrtx = Color.fromARGB(255, 171, 108, 183);
const clrck = Colors.deepPurple;

bool isMan = true;
int ht = 169;
int wt = 50;
int ag = 21;
double rslt = 0;

final nm = TextEditingController();

final deco = BoxDecoration(
  color: clrdc,
  borderRadius: BorderRadius.circular(18),
);

class AEClc extends StatefulWidget {
  const AEClc({super.key});

  @override
  State<AEClc> createState() => _AEClcState();
}

class _AEClcState extends State<AEClc> {
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
          "BMI CALC",
          style: TextStyle(
            color: clrwt,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Hallo ${nm.text} ^_^",
            style: const TextStyle(
              color: clrtx,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      isMan = true;
                    }),
                    child: Container(
                      width: 169,
                      decoration: BoxDecoration(
                        color: isMan ? clrck : clrdc,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: const [
                          Icon(
                            Icons.male,
                            color: clrwt,
                            size: 136,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              color: clrwt,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() {
                      isMan = false;
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        color: !isMan ? clrck : clrdc,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      width: 169,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.female,
                            color: clrwt,
                            size: 136,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              color: clrwt,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Container(
                decoration: deco,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                          color: clrwt,
                          fontSize: 29,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$ht",
                          style: const TextStyle(
                              color: clrwt,
                              fontSize: 56,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "CM",
                          style: TextStyle(
                            color: clrwt,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: clrck,
                      value: ht.toDouble(),
                      min: 50,
                      max: 250,
                      onChanged: (value) => setState(() {
                        ht = value.round();
                      }),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: deco,
                    width: 169,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(
                            color: clrwt,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "$wt",
                          style: const TextStyle(
                            color: clrwt,
                            fontSize: 69,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                wt--;
                              }),
                              heroTag: 'wt-',
                              backgroundColor: clrdc,
                              mini: true,
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                wt++;
                              }),
                              heroTag: 'wt+',
                              backgroundColor: clrdc,
                              mini: true,
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: deco,
                    width: 169,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                            color: clrwt,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "$ag",
                          style: const TextStyle(
                            color: clrwt,
                            fontSize: 69,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                ag--;
                              }),
                              heroTag: 'age-',
                              backgroundColor: clrdc,
                              mini: true,
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                ag++;
                              }),
                              heroTag: 'age+',
                              backgroundColor: clrdc,
                              mini: true,
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          btn(
            fun: () {
              rslt = wt / pow(ht / 100, 2);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AERslt(),
                ),
              );
            },
            txt: 'Calculate',
          ),
        ],
      ),
    );
  }
}
