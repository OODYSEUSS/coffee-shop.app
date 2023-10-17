import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 660,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/get_started.png',
                        fit: BoxFit.fitWidth,
                        width: 468,
                        height: 570,
                      ),
                      const Positioned(
                        bottom: 0,
                        left: 50,
                        right: 50,
                        child: Text(
                          'Coffee so good, your taste buds will love it.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'The best grain, the finest roast, the powerful flavor.',
                    style: TextStyle(
                      color: Color.fromRGBO(169, 169, 169, 1.0),
                      fontSize: 14,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(360, 55),
                        backgroundColor:
                            const Color.fromRGBO(198, 124, 78, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
