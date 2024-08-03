import 'dart:io';
import 'dart:math';
void main(){
  guessNumber();
}
void guessNumber(){
   Random random = Random();
  while (true) {
    int score=0;
    String? option;
    int randomNumber = random.nextInt(5) + 1;
    stderr.write("Enter your number :> ");
    int number=int.parse(stdin.readLineSync()!);
    if (randomNumber == number) {
      score++;
      print('\tYou gess the number !');
    }
    if(score>10){
      if(score==20||score==30||score==40||score==50||score==60||score==70||score==80||score==90||score==100){
         print('Your total score is :> $score');
        stderr.write('Do you want to continure (yes/y || no/n):>');
        option = stdin.readLineSync()!.toLowerCase();
        if (option == 'y' || option == 'yes') {
          continue;
        }
        if (option == 'n' || option == 'no') {
          break;
        } else {
          print('Invalid input! please answer yes/y or no/n.');
        }
      }
    }
    if(score==10){
    print('Your total score is :> $score');
      stderr.write('Do you want to continure (yes/y || no/n):>');
      option=stdin.readLineSync()!.toLowerCase();
      if(option=='y'||option=='yes'){
        continue;
      }
      if(option=='n'||option=='no'){
        break;
      }
      else{
        print('Invalid input! please answer yes/y or no/n.');
      }
    } 
    else {
      print('Try again !');
    }
  }
}
