// import 'package:flutter/material.dart';
//
// import 'HomeScteen/Screens/detelies/Detalies.dart';
// import 'HomeScteen/Screens/detelies/company.dart';
// import 'HomeScteen/Screens/detelies/people.dart';

import 'package:flutter/material.dart';

import 'HomeScteen/Screens/ApplayTab/Active.dart';
import 'HomeScteen/Screens/ApplayTab/Rejected.dart';

List <Widget>tabs= [
  Tab(text: 'Active',),
  Tab(text: 'Rejected',),
];
List <Widget>tabview=[
  Active(),
  Rejected(),
];

List countycode = [
  'ar-eg',
  'de',
  'en',
  'es',
  'fr',
  'it',
  'ar-iq',
  'ar-sa',
  'ar-kw',
  'ar-bh',
  'ar-lb',
  'ca',
  'ar-ma',
  'ar-qa',
  'ar-sy',
  'ar-tn',
];
List county = [
  'Egypt',
  'Germany',
  'United Kingdom',
  'Spain',
  'France',
  'Italy',
  'Iraq',
  'Saudi Arabia',
  'Kuwait',
  'Qater',
  'Lebanon',
  'Canada',
  'Morocco',
  'Qater',
  'Syria',
  'Tunisia',
];

