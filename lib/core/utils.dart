import 'package:flutter/material.dart';

/// Returns a percentage of the screen height
/// 
/// [context] The build context
/// [percentage] The percentage of the screen height to return (0-100)
/// Returns the calculated height in logical pixels
double mqHeigth(BuildContext context, double percentage){
  return MediaQuery.of(context).size.height * (percentage/100);
}

/// Returns a percentage of the screen width
///
/// [context] The build context 
/// [percentage] The percentage of the screen width to return (0-100)
/// Returns the calculated width in logical pixels
double mqWidth(BuildContext context, double percentage){
  return MediaQuery.of(context).size.width * (percentage/100);
}