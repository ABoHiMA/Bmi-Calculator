import 'package:flutter/material.dart';
import 'package:aebmi/bmi/aeclc.dart';

Widget btn({
  Color clr = Colors.purpleAccent,
  double wd = double.infinity,
  double ht = 39,
  double rd = 39,
  required final Function() fun,
  required String txt,
  bool up = false,
}) =>
    Container(
      width: wd,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(rd),
        color: clr,
      ),
      child: MaterialButton(
        height: ht,
        onPressed: fun,
        child: Text(
          up ? txt.toUpperCase() : txt,
          style: const TextStyle(
            color: clrwt,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );

Widget tff({
  required String? Function(String?) vld,
  required TextEditingController ctrl,
  required TextInputType type,
  final Function(String)? smt,
  final Function(String)? chg,
  required String txt,
  required Icon ic,
  Key? key,
}) {
  return TextFormField(
    key: key,
    validator: vld,
    controller: ctrl,
    onFieldSubmitted: smt,
    onChanged: chg,
    keyboardType: type,
    decoration: InputDecoration(
      labelText: txt,
      border: const OutlineInputBorder(),
      prefixIcon: ic,
    ),
  );
}
