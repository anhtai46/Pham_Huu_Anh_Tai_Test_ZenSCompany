import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentJoke = "".obs;
  var jokeHistory = <String>[].obs;
  bool isRead = false;
  int count = 0;

  Future<void> getJoke() async {
    const jokes = [
      'A child asked his father, "How were people born?"'
          " So his father said, \"Adam and Eve made babies, then their babies became adults and made babies, and so on.\""
          " The child then went to his mother, asked her the same question and she told him, \"We were monkeys then we evolved to become like we are now.\""
          " The child ran back to his father and said, \"You lied to me!\""
          " His father replied, \"No, your mom was talking about her side of the family.\"",
      "Teacher: \"Kids,what does the chicken give you?"
          "Student: \"Meat!\"\n"
          "Teacher: \"Very good! Now what does the pig give you?\"\n"
          "Student: \"Bacon!\"\n"
          "Teacher: \"Great! And what does the fat cow give you?\"\n"
          "Student: \"Homework!\"",
      "The teacher asked Jimmy, \"Why is your cat at school today Jimmy?\" "
          "Jimmy replied crying, \"Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'\"",
      "A housewife, an accountant and a lawyer were asked \"How much is 2+2?\" "
          "The housewife replies: \"Four!\""
          ". The accountant says: \"I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time.\" "
          "The lawyer pulls the drapes, dims the lights and asks in a hushed voice, \"How much do you want it to be?\"",
    ];
    currentJoke.value = jokes[count];
    count++;

    if (count >= jokes.length) {
      count = 0;
      Get.snackbar(
        icon: const Icon(Icons.notification_important_rounded),
        'Notification',
        'That\'s all the jokes for today! Come back another day!',
        backgroundColor: Colors.red,
      );
    }
  }

  void onFunnyButtonPressed() async {
    getJoke();
  }

  void onNotFunnyButtonPressed() async {
    getJoke();
  }
}
