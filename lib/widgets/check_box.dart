import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IndividualTherapyQ3 extends StatefulWidget {
  const IndividualTherapyQ3({super.key});

  @override
  State<IndividualTherapyQ3> createState() => _IndividualTherapyQ3State();
}



class _IndividualTherapyQ3State extends State<IndividualTherapyQ3> {

  List<String> service = ["I’ve been feeling anxious and worried",
    "I’ve been feeling empty and unfullfilled",
    "I’m dealing with personal image issues",
    "I’ve been stressed because of work/school",

    "I’ve been feeling empty and unfullfilled",
    "I’m dealing with personal image issues",
    "I’ve been stressed because of work/school",

    "I’ve been feeling empty and unfullfilled",
    "I’m dealing with personal image issues",
    "I’ve been stressed because of work/school",
  ];
  Set<int> selectedIndices = Set<int>();
  bool clicked = false;
  int selected = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          children: [
          Container(child: Column(
              children: [
                const Text(
                  "3.",

                ),
                const SizedBox(width: 16),
                const Text(
                  "Please share with us why you’re \nlooking for help today. ( You can\nselect up to 3)",

                ),
                Column(
                    children: List.generate(service.length, (index) => Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                if (selectedIndices.contains(index)) {
                                  selectedIndices.remove(index);
                                } else {
                                  selectedIndices.add(index);
                                }
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              // margin: const EdgeInsets.only(top: 12),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green,width: 1),
                                  color: selectedIndices.contains(index)
                                      ? Colors.green
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: selectedIndices.contains(index)
                                  ? const Icon(Icons.check, color: Colors.white,)
                                  : const SizedBox(),
                            ),
                          ),

                          const SizedBox(width: 12,),

                          Flexible(
                            child: Text(
                              service[index],
                              maxLines: 2,
                              textAlign: TextAlign.start,


                            ),
                          ),

                        ],
                      ),
                    ),)
                ),
              ],

            )),

          ],

        ),
      ),
    );
  }
}
