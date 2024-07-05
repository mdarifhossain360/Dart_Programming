import'dart:io';
void banner1(int captureChoise){
  if(captureChoise==1){
    print('Converted to Fahrenheit Succesfully!');
  }
  else if(captureChoise==2){
    print('Converted to Kelvin Succesfully!');
  }
  else if(captureChoise==3){
    print('Converted to Celcius Succesfully!');
  }
  else if(captureChoise==4){
    print('Converted to Kelvin Succesfully!');
  }
  else if(captureChoise==5){
    print('Converted to Celcius Succesfully!');
  }
  else if(captureChoise==6){
    print('Converted to Fahrenheit Succesfully!');
  }
  else{
    print('Not Found.Please enter following choise!');
  }
}
void banner() {
  print('-----------------WELCOME------------------');
  print('Loading.....');
  var duration = const Duration(seconds: 2);
  sleep(duration);
  print('Celcius to Fahrenheit : Press for >( 1 )< ');
  print('Celcius to Kelvin     : Press for >( 2 )< ');
  print('Fahrenheit to Celcius : Press for >( 3 )< ');
  print('Fahrenheit to Kelvin  : Press for >( 4 )< ');
  print('Kelvin to Celcius     : Press for >( 5 )< ');
  print('Kelvin to Fahrenheit  : Press for >( 6 ) <');  
  print('------------------------------------------');
}
double CeltoFar(int temp){
  var far=(9/5*temp)+32;
  String num1=far.toStringAsFixed(2);
  double num2=double.parse(num1);
  return num2;
}
double FartoCel(int temp){
  var cel=(temp-32)*5/9;
  String num1=cel.toStringAsFixed(2);
  double num2=double.parse(num1);
  return num2;
}
double CeltoKe(int temp){
  var kel=temp+273.15;
  String num1=kel.toStringAsFixed(2);
  double num2=double.parse(num1);
  return num2;
}
double FartoKe(int temp){
  var kel=(temp-32)*5/9+273.15;
  String num1=kel.toStringAsFixed(2);
  double num2=double.parse(num1);
  return num2;
}
double keltoFar(int temp){
  var far=(temp-273.15)*9/5+32;
  String num1=far.toStringAsFixed(2);
  double num2=double.parse(num1);
  return num2;
}
double keltoCel(int temp){
  var cel=temp-273.15;
  String num1=cel.toStringAsFixed(2);
  double num2=double.parse(num1);
  return num2;
}
void main(){
  banner();
  stderr.write('Enter your choise :> ');
  var choise=int.parse(stdin.readLineSync()!);
  switch(choise){
      case 1:
      stderr.write('Enter your temparature :> ');
      var temp=int.parse(stdin.readLineSync()!);
      print('${CeltoFar(temp)} F');
      banner1(choise);
      break;
  
      case 2:
      stderr.write('Enter your temparature :> ');
      var temp=int.parse(stdin.readLineSync()!);
      print('${CeltoKe(temp)} K');
      banner1(choise);
      break;
  
      case 3:
      stderr.write('Enter your temparature :> ');
      var temp=int.parse(stdin.readLineSync()!);
      print('${FartoCel(temp)}° C');
      banner1(choise);
      break;
  
      case 4:
      stderr.write('Enter your temparature :> ');
      var temp=int.parse(stdin.readLineSync()!);
      print('${FartoKe(temp)} K');
      banner1(choise);
      break;
  
      case 5:
      stderr.write('Enter your temparature :> ');
      var temp=int.parse(stdin.readLineSync()!);
      print('${keltoFar(temp)} F');
      banner1(choise);
      break;
      
      case 6:
      stderr.write('Enter your temparature :> ');
      var temp=int.parse(stdin.readLineSync()!);
      print('${keltoCel(temp)}° C');
      banner1(choise);
      break;
      
      default :
      print('Invalid input !');
      break;
    }
  }