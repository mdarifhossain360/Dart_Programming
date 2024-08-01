import 'dart:io';
import 'package:ansicolor/ansicolor.dart';
void printBanner(){
  print('Welcome to my BMI Calculator');
}
double bmiCalculator(double heightPerameter,double weightPerameter){
  double cmTOmeter=heightPerameter/100.0;
  double squreHeight=cmTOmeter*cmTOmeter;
  double calculateBmi=weightPerameter/squreHeight;
  return calculateBmi;  
}
void main(){
  AnsiPen redColor=AnsiPen()..red();
  AnsiPen greenColor=AnsiPen()..green();
  printBanner();
  print('Loading....');
  Future.delayed(Duration(seconds: 3),(){
    stderr.write('Enter your height in centimeter :>');
    double height=double.parse(stdin.readLineSync()!);
    stderr.write('Enter your weight in KG :> ');
    double weight=double.parse(stdin.readLineSync()!);
    double containBMi=bmiCalculator(height, weight);
    if(containBMi<18.5){
      print(redColor('Underweight !'));
      print(greenColor('Your BMI is :> ${containBMi.toStringAsFixed(1)}'));
    }
    else if(containBMi>=18.5&&containBMi<=24.9){
      print(greenColor('Normal weight.'));
      print(greenColor('Your BMI is :> ${containBMi.toStringAsFixed(1)}'));
    }
    else if(containBMi>=25.0&&containBMi<=29.9){
      print(redColor('Overweight !'));
      print(greenColor('Your BMI is :> ${containBMi.toStringAsFixed(1)}'));
    }
    else if(containBMi>=30.0&&containBMi<=34.9){
      print(redColor('Obesity class 1 !'));
      print(greenColor('Your BMI is :> ${containBMi.toStringAsFixed(1)}'));
    }
    else if(containBMi>=35.0&&containBMi<=39.9){
      print(redColor('Obesity class 2 !'));
      print(greenColor('Your BMI is :> ${containBMi.toStringAsFixed(1)}'));
    }
    else{
      print(redColor('Obesity class 3 !'));
      print(greenColor('Your BMI is :> ${containBMi.toStringAsFixed(1)}'));
    }
  });  
}
