import 'package:flutter/material.dart';

Container elevatedButton() {
  return Container(
    width: 360,
    height: 48,
    decoration:BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)),
        onPressed: () {},
        child: const Text(
          'Search ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Readex Pro',
            fontWeight: FontWeight.w700,
          ),
        )),
  );
}
