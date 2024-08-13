import 'dart:io';
import 'dart:math';
import 'package:ansicolor/ansicolor.dart';
void banner(){
  final AnsiPen blueColor = AnsiPen()..blue();
  final AnsiPen grayColor = AnsiPen()..gray();
  print(blueColor('\t\t\tWelcome to Our Word Guessing Game.\n'));
  //print(grayColor('Loading....'));
  /*Future.delayed(Duration(seconds: 3),(){
    print(grayColor('Loading....'));
  });*/
  final List bannerWord = [
    'c++',
    'c',
    'c programming',
    'c#',
    'python',
    'dart',
    'perl',
    'java',
    'javascript'
  ];
  for(int i=0;i<bannerWord.length;i++){
    stderr.write(grayColor('${bannerWord[i]}    '));
  }
  print('\n');
  print('You have to use these word to play this game!');
}
void guessWord(){
  final AnsiPen redColor = AnsiPen()..red();
  final AnsiPen greenColor = AnsiPen()..green();
  final List word=[
    'c++','c','c programming','c#','python','dart','perl','java','javascript'
  ];
  int score=0;
  for(var i=1;i<=10000;i++){
    final random=Random();
    String randomWord=word[random.nextInt(word.length)];
    stderr.write('Enter your guessing word :> ');
    String userGuessWord=stdin.readLineSync()!.toLowerCase();
    if(randomWord==userGuessWord){
      score++;
      print(greenColor('You Guess the word !'));
      if(score%10==0&&score!=0){
        print(greenColor('Your score is :> $score'));
        stderr.write('\t Do you want to continue this game :> ');
        String option=stdin.readLineSync()!.toLowerCase();
        if(option=='yes'||option=='y'){
          continue;
        }
        else if(option=='no'||option=='n'){
          break;
        }else{
          print(redColor('Invalid Input !'));
        }
      }
    }
    else{
      print('Try again !');
    }
  }
}
void main(){
  banner();
  guessWord();
}