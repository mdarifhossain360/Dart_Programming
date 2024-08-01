import 'dart:io';
double cmTOmeter(double cm){
  double meter=cm/100.0;
  return meter;
}
double meterTOcentemeter(double m){
  double centimeter=m*100.0;
  return centimeter; 
}
void printChoise(){
  print('Press m to centemeter to meter');
  print('press cm to meter to cemtemeter\n');
}
void main(){
  printChoise();
  print('Loading...');
  Future.delayed(Duration(seconds: 2),(){
    stderr.write('Enter your choise :>');
    String choise = stdin.readLineSync()!.toLowerCase();
    switch (choise == 'cm') {
      case true:
        print('Now you can convert Meter to Centemeter :) ');
        stderr.write('Enter your number :> ');
        double number = double.parse(stdin.readLineSync()!);
        print('${meterTOcentemeter(number).toStringAsFixed(1)} m');
        break;
      case false:
        print('Now you can convert Centemeter to Meter :)');
        stderr.write('Enter your number :> ');
        double number = double.parse(stdin.readLineSync()!);
        print('${cmTOmeter(number).toStringAsFixed(1)} cm');
        break;
      default:
        print('Invalid input !');
        break;
    }
  });
}
