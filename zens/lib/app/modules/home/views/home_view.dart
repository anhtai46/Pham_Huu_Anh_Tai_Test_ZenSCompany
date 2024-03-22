import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zens/app/resource/color_manager.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppbarColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/img/logo.png'),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Handicrafted by',
                  style: TextStyle(color: textAll, fontSize: 15),
                ),
                Text(
                  'Jim HLS',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img/avt.png'),
              radius: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomCommon(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              color: backgr1,
              padding: const EdgeInsets.all(30),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'A joke a day keeps the doctor away',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'if you joke wrong way, your teeth have to pay. (Serious)',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13.3, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () => Container(
                  padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
                  child: Column(
                    children: [
                      IndexedStack(
                        index: controller.isRead ? 1 : 0,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: TextButton(
                              onPressed: () {
                                controller.isRead = true;
                                controller.getJoke();
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 107, 33, 243)),
                              ),
                              child: const Text(
                                'Read Joke',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            controller.currentJoke.value.toString(),
                            style: const TextStyle(fontSize: 14.5),
                          ),
                        ],
                      ),
                      const SizedBox(height: 150),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: TextButton(
                              onPressed: () =>
                                  controller.onFunnyButtonPressed(),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                              ),
                              child: const Text(
                                'This is Funny!',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: TextButton(
                              onPressed: () =>
                                  controller.onNotFunnyButtonPressed(),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(backgr1),
                              ),
                              child: const Text(
                                'This is not Funny.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomCommon() {
    return Container(
      height: 145,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.4,
        ),
      ),
      child: const Column(
        children: [
          Text(
            'This appis created as part of Hlsolutions program. The materials con-tained on this '
            'website are provided for general information only and do not constitute any form of advice. '
            'HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability '
            'for any loss or damage which may arise from reliance on the infor-mation contained on this site.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11.8,
              color: textAll,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 17),
          Text(
            'Copyright 2021 HLS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Color.fromRGBO(139, 139, 139, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
