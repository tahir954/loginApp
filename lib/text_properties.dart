import 'package:flutter/material.dart';

const txtStyl = TextStyle(
    fontSize: 25, fontWeight: FontWeight.w700, color: Colors.blueAccent);
const txtstl = TextStyle(fontSize: 15, fontStyle: FontStyle.italic);
const uperdeco = InputDecoration(
  labelText: 'User Name',
  fillColor: Colors.black12,
  border: OutlineInputBorder(),
);
const lowdeco = InputDecoration(
  label: Text('Password'),
  border: OutlineInputBorder(),
);
const btnProp = ButtonStyle(
  foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
  padding: MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 40,
    ),
  ),
);
