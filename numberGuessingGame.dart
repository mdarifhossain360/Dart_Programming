import 'dart:io';
import 'dart:math';
void main(){
  guessNumber();
}
void guessNumber(){
  int score=0;
   Random random = Random();
  while (true) {
    int randomNumber = random.nextInt(5) + 1;
    stderr.write("Enter your number :> ");
    int number=int.parse(stdin.readLineSync()!);
    if (randomNumber == number) {
      score++;
      print('\tYou gess the number !');
    }
    if(score>10){
      score=score+9;
    }
    if(score==10){
      print('Your total score is :> $score');
      stderr.write('Do you want to continure (yes/y || no/n):>');
      String option=stdin.readLineSync()!.toLowerCase();
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
