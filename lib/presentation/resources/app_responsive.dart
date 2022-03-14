
import 'package:flutter/material.dart';


double getwidth({context, double width=1.0}) =>
    MediaQuery.of(context).size.width * width;
double getheight({context, double height =1.0}) =>
    MediaQuery.of(context).size.width * height;

