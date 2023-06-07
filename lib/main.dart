import 'package:flutter/material.dart';
import 'package:hash_test/alternatives_input.dart';
import 'package:hash_test/components/alternatives.dart';
import 'package:hash_test/components/criteria.dart';
import 'package:hash_test/components/criterion.dart';
import 'package:hash_test/data/criterion_inherited.dart';
import 'package:hash_test/home.dart';
import 'package:hash_test/output.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Alternatives(alternatives: [])),
      ChangeNotifierProvider(create: (context) => Criteria(criteria: [], alternativeNames: []))
    ],
    child: const MyApp(),
  ));
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //final BuildContext CriterionCont;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //color: AppColors.purple,
      home: InputAlternatives(),
    );
  }
}