import 'dart:io';
import 'dart:math';
void main(){
  final random=Random();
  print('type exit to stop');
  Map<String,String>rules={
    "rock":"scissors",
    "scissors":"paper",
    "paper":"rock"
  };
  int user=0;
  int computer=0;
  List<String>option=[
    "rock",'paper','scissors'
  ];
  while(true){
    String computerChoise=option[random.nextInt(option.length)];
    stderr.write("rock,paper,scissors : >");
    String userChoise=stdin.readLineSync()!.toLowerCase();
    if(userChoise=="exit"){
      print('bye bye!');
      break;
    }
    if(!option.contains(userChoise)){
      print('Incorrect choise');
      continue;
    }
    else if(computerChoise==userChoise){
      print('we have a tie!');
    }
    else if(rules[computerChoise]==userChoise){
      print('computer wins');
      computer=computer+1;
    }
    else if(rules[userChoise]==computerChoise){
      print('you wins');
      user=user+1;
    }
  }
}