import 'package:pk_prompter/pk_prompter.dart';

void main(List<String> args) {
  final prompter = Prompter();

  final String question1 = 'Which color do you want?';
  final options1 = [
    Option('I want red', '#F00'),
    Option('I want blue', '#00F'),
    Option('I want green', '#0F0'),
  ];

  final String question2 = 'Do you like this lib?';

  String colorCode = prompter.askMultipleChoice(question1, options1);
  bool answer = prompter.askBinary(question2);
  print(colorCode);
  print(answer);
}
