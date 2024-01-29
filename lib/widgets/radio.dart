import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IndiviaualTherapyQ1 extends StatefulWidget {
  const IndiviaualTherapyQ1({super.key});

  @override
  State<IndiviaualTherapyQ1> createState() => _IndiviaualTherapyQ1State();
}

class _IndiviaualTherapyQ1State extends State<IndiviaualTherapyQ1> {
  List gender = ["Male","Female"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "1.",
                    ),
                      Text(
                      "What is your sex?",

                    )
                  ],
                ),

                const SizedBox(height: 8,),
                Column(
                  children: List.generate(gender.length, (index) => GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,width: 20,
                            decoration:  BoxDecoration(
                                color: Colors.cyan,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green,width: 0.5)
                            ),
                          ),
                          const SizedBox(width: 16,),
                        Text(
                            ""
                          )
                        ],

                      ),
                    ),
                  ),),
                ),
              ],

            ),

          ],
        ),
      ),
    );
  }
}
